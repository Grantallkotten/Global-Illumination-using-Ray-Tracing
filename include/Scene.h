#pragma once
#include "Camera.h"
#include "ColorDBL.h"
#include "LightSource.h"
#include "Object.h"
#include "Tetrahedron.h"
#include "Sphere.h"
#include "glm/glm.hpp"
#include <chrono> // Time rendering

class Scene {
private:
    Camera camera;

    // Draw an image and call all corners "pointX", then you can easy creat a room
    // in Objects
    glm::vec3 points[12] = {
        glm::vec3(0.0f, 6.0f, 5.0f),   // p0
        glm::vec3(10.0f, 6.0f, 5.0f),  // p1
        glm::vec3(13.0f, 0.0f, 5.0f),  // p2
        glm::vec3(10.0f, -6.0f, 5.0f), // p3
        glm::vec3(0.0f, -6.0f, 5.0f),  // p4
        glm::vec3(-3.0f, 0.0f, 5.0f),  // p5

        glm::vec3(0.0f, 6.0f, -5.0f),   // p6 
        glm::vec3(10.0f, 6.0f, -5.0f),  // p7
        glm::vec3(13.0f, 0.0f, -5.0f),  // p8
        glm::vec3(10.0f, -6.0f, -5.0f), // p9
        glm::vec3(0.0f, -6.0f, -5.0f),  // p10 
        glm::vec3(-3.0f, 0.0f, -5.0f),  // p11 
    };

public:
    const ColorDBL SKYBOXCOLOR = ColorDBL(0.21, 0.32, 0.56);
    const ColorDBL WHITE = ColorDBL(0.4f, 0.4f, 0.4f);
    const ColorDBL FLOORBLUE = ColorDBL(0.2, 0.2, 0.4);
    const ColorDBL AQUA = ColorDBL(0.0, 0.2, 0.4);
    const ColorDBL MAGENTA = ColorDBL(0.4, 0.1, 0.3);
    const ColorDBL LIME = ColorDBL(0.1, 0.2, 0.1);
    const ColorDBL LEMON = ColorDBL(0.3, 0.4, 0.1);
    const ColorDBL OCEAN = ColorDBL(0.05, 0.2, 0.4);
    const ColorDBL GREY = ColorDBL(0.4, 0.4, 0.4);
    const ColorDBL OLDROOF = ColorDBL(0.1, 0.0, 0.2);
    const ColorDBL ROOF = ColorDBL(0.2, 0.0, 0.3);
    const ColorDBL ROOF2 = ColorDBL(0.1, 0.1, 0.1);
    const ColorDBL ORANGE = ColorDBL(0.4, 0.2, 0.0);
    const ColorDBL BLUSH = ColorDBL(0.22, 0.09, 0.17);
    const ColorDBL RED = ColorDBL(0.4, 0.0, 0.0);
    const ColorDBL GREEN = ColorDBL(0.0, 0.4, 0.0);
    const ColorDBL SUNFLOWER = ColorDBL(0.4, 0.4, 0.16);
    const ColorDBL WALL3 = ColorDBL(0.0, 0.0, 0.5);
    const ColorDBL WALL2 = ColorDBL(0.0, 0.5, 0.1);


    std::vector<Object*> Objects;

    std::vector<LightSource*> LightSources;


    Scene(Camera c = Camera(glm::vec3(-1.0f, 0.0f, 0.0f), 400), std::vector<Object*> o = std::vector<Object*>())
        : camera{ c }, Objects{ o } {
        auto start = std::chrono::high_resolution_clock::now(); // Before starting rendering

        standardScene();
        camera.render(this);
        camera.writePPM();

        std::cout << "Time to render: ";
        auto stop = std::chrono::high_resolution_clock::now();
        auto duration = std::chrono::duration_cast<std::chrono::milliseconds>(stop - start);
        displayTime((int)duration.count());
    };

    void add(Structure s) {
        auto objs = s.Objects();
        for (unsigned long i = 0; i < objs.size(); i++) {
            Objects.push_back(objs[i]);
        }
    }

    void add(Object* c) {
        Objects.push_back(c);
    }

    void addLight(LightSource* s) {
        LightSources.push_back(s);
    }

    void standardScene() {
        add(Tetrahedron(glm::vec3(4.0f, -4.2f, -2.0f), 2.0f, 2.0f, Material(Material::diffusion, AQUA)));

        add(Tetrahedron(glm::vec3(8.0f, -3.0f, -2.0f), 2.0f, 4.0f));

        //add(new Sphere(glm::vec3(5.2f, -3.0f, 0.0f), 1.0f, Material(Material::translucence, WHITE)));


        add(new Sphere(glm::vec3(7.0f, 3.0f, -2.0f), 2.0f, Material(Material::specularity, WHITE)));


        add(new Sphere(glm::vec3(6.0f, -4.0f, 1.0f), 1.0f, Material(Material::translucence, WHITE)));

        add(new Sphere(glm::vec3(7.0f, -0.1f, -2.0f), 1.0f, Material(Material::glossy, AQUA)));

        add(new Sphere(glm::vec3(8.6f, 3.6f, 1.5f), 1.0f, Material(Material::glossy, WHITE)));

        // Wall 1
        add(
            new Triangle(points[1], points[0], points[7],
                Material(Material::diffusion, RED)));
        add(
            new Triangle(points[0], points[6], points[7],
                Material(Material::diffusion, RED)));

        // Wall 2
        add(
            new Triangle(points[1], points[7], points[2],
                Material(Material::diffusion, WHITE)));
        add(
            new Triangle(points[2], points[7], points[8],
                Material(Material::diffusion, WHITE)));

        // Wall 3
        add(
            new Triangle(points[2], points[8], points[3],
                Material(Material::diffusion, WHITE)));
        add(
            new Triangle(points[3], points[8], points[9],
                Material(Material::diffusion, WHITE)));

        // Roof 1
        add(
            new Triangle(points[1], points[2], points[3],
                Material(Material::diffusion, ROOF2)));

        // Wall 4
        add(
            new Triangle(points[3], points[9], points[4],
                Material(Material::diffusion, GREEN)));
        add(
            new Triangle(points[4], points[9], points[10],
                Material(Material::diffusion, GREEN)));

        // Roof 2
        add(
            new Triangle(points[0], points[1], points[4],
                Material(Material::diffusion, ROOF2)));
        add(
            new Triangle(points[1], points[3], points[4],
                Material(Material::diffusion, ROOF2)));

        // Roof 3
        add(
            new Triangle(points[0], points[4], points[5],
                Material(Material::diffusion, ROOF2)));

        // Wall 5
        add(
            new Triangle(points[4], points[10], points[5],
                Material(Material::diffusion, WHITE)));
        add(
            new Triangle(points[5], points[10], points[11],
                Material(Material::diffusion, WHITE)));

        // Wall 6
        add(
            new Triangle(points[0], points[5], points[11],
                Material(Material::diffusion, WHITE)));
        add(
            new Triangle(points[0], points[11], points[6],
                Material(Material::diffusion, WHITE)));

        // Floor 1
        add(
            new Triangle(points[7], points[9], points[8],
                Material(Material::diffusion, WHITE)));

        // Floor 2
        add(
            new Triangle(points[7], points[10], points[9],
                Material(Material::diffusion, WHITE)));
        add(
            new Triangle(points[7], points[6], points[10],
                Material(Material::diffusion, WHITE)));

        // Floor 3
        add(
            new Triangle(points[6], points[11], points[10],
                Material(Material::diffusion, WHITE)));

        // Roof lamp
        addLight(new LightSource(
            glm::vec3(1.0f, 0.5f, 4.9f), glm::vec3(7.0f, 0.5f, 4.9f),
            glm::vec3(7.0f, -0.5f, 4.9f),
            Material(Material::diffusion, ColorDBL(0.8, 0.8, 0.9))));
        addLight(new LightSource(
            glm::vec3(1.0f, -0.5f, 4.9f), glm::vec3(1.0f, 0.5f, 4.9f),
            glm::vec3(7.0f, -0.5f, 4.9f),
            Material(Material::diffusion, ColorDBL(0.8, 0.8, 0.9))));

        add(new LightSource(glm::vec3(1.0f, 0.5f, 4.9f), glm::vec3(7.0f, 0.5f, 4.9f), glm::vec3(7.0f, -0.5f, 4.9f), Material(Material::light, ColorDBL(1.0, 1.0, 1.0))));
        add(new LightSource(glm::vec3(1.0f, -0.5f, 4.9f), glm::vec3(1.0f, 0.5f, 4.9f), glm::vec3(7.0f, -0.5f, 4.9f), Material(Material::light, ColorDBL(1.0, 1.0, 1.0))));
    }

    // Display the time in hours, minutes, seconds and milliseconds from seconds
    void displayTime(int timeMilliseconds) {
        int seconds = timeMilliseconds / 1000;
        int minutes = seconds / 60;
        int hours = minutes / 60;

        int milliseconds = timeMilliseconds % 1000;
        seconds %= 60;
        minutes %= 60;

        std::cout << std::setfill('0');
        if (hours > 0) std::cout << std::setw(2) << hours << ":";
        if (minutes > 0) std::cout << std::setw(2) << minutes << ":";
        if (seconds > 0) std::cout << std::setw(2) << seconds << ".";
        std::cout << std::setw(3) << milliseconds;
    }

};
