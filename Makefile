# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/ziagord/.local/lib/python3.11/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/ziagord/.local/lib/python3.11/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ziagord/dev/school/RayTracer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ziagord/dev/school/RayTracer

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/home/ziagord/.local/lib/python3.11/site-packages/cmake/data/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/home/ziagord/.local/lib/python3.11/site-packages/cmake/data/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/ziagord/dev/school/RayTracer/CMakeFiles /home/ziagord/dev/school/RayTracer//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/ziagord/dev/school/RayTracer/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named Raytracing

# Build rule for target.
Raytracing: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 Raytracing
.PHONY : Raytracing

# fast build rule for target.
Raytracing/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Raytracing.dir/build.make CMakeFiles/Raytracing.dir/build
.PHONY : Raytracing/fast

src/Camera.o: src/Camera.cpp.o
.PHONY : src/Camera.o

# target to build an object file
src/Camera.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Raytracing.dir/build.make CMakeFiles/Raytracing.dir/src/Camera.cpp.o
.PHONY : src/Camera.cpp.o

src/Camera.i: src/Camera.cpp.i
.PHONY : src/Camera.i

# target to preprocess a source file
src/Camera.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Raytracing.dir/build.make CMakeFiles/Raytracing.dir/src/Camera.cpp.i
.PHONY : src/Camera.cpp.i

src/Camera.s: src/Camera.cpp.s
.PHONY : src/Camera.s

# target to generate assembly for a file
src/Camera.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Raytracing.dir/build.make CMakeFiles/Raytracing.dir/src/Camera.cpp.s
.PHONY : src/Camera.cpp.s

src/ColorDBL.o: src/ColorDBL.cpp.o
.PHONY : src/ColorDBL.o

# target to build an object file
src/ColorDBL.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Raytracing.dir/build.make CMakeFiles/Raytracing.dir/src/ColorDBL.cpp.o
.PHONY : src/ColorDBL.cpp.o

src/ColorDBL.i: src/ColorDBL.cpp.i
.PHONY : src/ColorDBL.i

# target to preprocess a source file
src/ColorDBL.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Raytracing.dir/build.make CMakeFiles/Raytracing.dir/src/ColorDBL.cpp.i
.PHONY : src/ColorDBL.cpp.i

src/ColorDBL.s: src/ColorDBL.cpp.s
.PHONY : src/ColorDBL.s

# target to generate assembly for a file
src/ColorDBL.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Raytracing.dir/build.make CMakeFiles/Raytracing.dir/src/ColorDBL.cpp.s
.PHONY : src/ColorDBL.cpp.s

src/LightSource.o: src/LightSource.cpp.o
.PHONY : src/LightSource.o

# target to build an object file
src/LightSource.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Raytracing.dir/build.make CMakeFiles/Raytracing.dir/src/LightSource.cpp.o
.PHONY : src/LightSource.cpp.o

src/LightSource.i: src/LightSource.cpp.i
.PHONY : src/LightSource.i

# target to preprocess a source file
src/LightSource.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Raytracing.dir/build.make CMakeFiles/Raytracing.dir/src/LightSource.cpp.i
.PHONY : src/LightSource.cpp.i

src/LightSource.s: src/LightSource.cpp.s
.PHONY : src/LightSource.s

# target to generate assembly for a file
src/LightSource.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Raytracing.dir/build.make CMakeFiles/Raytracing.dir/src/LightSource.cpp.s
.PHONY : src/LightSource.cpp.s

src/Pixel.o: src/Pixel.cpp.o
.PHONY : src/Pixel.o

# target to build an object file
src/Pixel.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Raytracing.dir/build.make CMakeFiles/Raytracing.dir/src/Pixel.cpp.o
.PHONY : src/Pixel.cpp.o

src/Pixel.i: src/Pixel.cpp.i
.PHONY : src/Pixel.i

# target to preprocess a source file
src/Pixel.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Raytracing.dir/build.make CMakeFiles/Raytracing.dir/src/Pixel.cpp.i
.PHONY : src/Pixel.cpp.i

src/Pixel.s: src/Pixel.cpp.s
.PHONY : src/Pixel.s

# target to generate assembly for a file
src/Pixel.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Raytracing.dir/build.make CMakeFiles/Raytracing.dir/src/Pixel.cpp.s
.PHONY : src/Pixel.cpp.s

src/Ray.o: src/Ray.cpp.o
.PHONY : src/Ray.o

# target to build an object file
src/Ray.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Raytracing.dir/build.make CMakeFiles/Raytracing.dir/src/Ray.cpp.o
.PHONY : src/Ray.cpp.o

src/Ray.i: src/Ray.cpp.i
.PHONY : src/Ray.i

# target to preprocess a source file
src/Ray.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Raytracing.dir/build.make CMakeFiles/Raytracing.dir/src/Ray.cpp.i
.PHONY : src/Ray.cpp.i

src/Ray.s: src/Ray.cpp.s
.PHONY : src/Ray.s

# target to generate assembly for a file
src/Ray.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Raytracing.dir/build.make CMakeFiles/Raytracing.dir/src/Ray.cpp.s
.PHONY : src/Ray.cpp.s

src/Tetrahedron.o: src/Tetrahedron.cpp.o
.PHONY : src/Tetrahedron.o

# target to build an object file
src/Tetrahedron.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Raytracing.dir/build.make CMakeFiles/Raytracing.dir/src/Tetrahedron.cpp.o
.PHONY : src/Tetrahedron.cpp.o

src/Tetrahedron.i: src/Tetrahedron.cpp.i
.PHONY : src/Tetrahedron.i

# target to preprocess a source file
src/Tetrahedron.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Raytracing.dir/build.make CMakeFiles/Raytracing.dir/src/Tetrahedron.cpp.i
.PHONY : src/Tetrahedron.cpp.i

src/Tetrahedron.s: src/Tetrahedron.cpp.s
.PHONY : src/Tetrahedron.s

# target to generate assembly for a file
src/Tetrahedron.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Raytracing.dir/build.make CMakeFiles/Raytracing.dir/src/Tetrahedron.cpp.s
.PHONY : src/Tetrahedron.cpp.s

src/Triangle.o: src/Triangle.cpp.o
.PHONY : src/Triangle.o

# target to build an object file
src/Triangle.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Raytracing.dir/build.make CMakeFiles/Raytracing.dir/src/Triangle.cpp.o
.PHONY : src/Triangle.cpp.o

src/Triangle.i: src/Triangle.cpp.i
.PHONY : src/Triangle.i

# target to preprocess a source file
src/Triangle.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Raytracing.dir/build.make CMakeFiles/Raytracing.dir/src/Triangle.cpp.i
.PHONY : src/Triangle.cpp.i

src/Triangle.s: src/Triangle.cpp.s
.PHONY : src/Triangle.s

# target to generate assembly for a file
src/Triangle.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Raytracing.dir/build.make CMakeFiles/Raytracing.dir/src/Triangle.cpp.s
.PHONY : src/Triangle.cpp.s

src/main.o: src/main.cpp.o
.PHONY : src/main.o

# target to build an object file
src/main.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Raytracing.dir/build.make CMakeFiles/Raytracing.dir/src/main.cpp.o
.PHONY : src/main.cpp.o

src/main.i: src/main.cpp.i
.PHONY : src/main.i

# target to preprocess a source file
src/main.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Raytracing.dir/build.make CMakeFiles/Raytracing.dir/src/main.cpp.i
.PHONY : src/main.cpp.i

src/main.s: src/main.cpp.s
.PHONY : src/main.s

# target to generate assembly for a file
src/main.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Raytracing.dir/build.make CMakeFiles/Raytracing.dir/src/main.cpp.s
.PHONY : src/main.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... Raytracing"
	@echo "... src/Camera.o"
	@echo "... src/Camera.i"
	@echo "... src/Camera.s"
	@echo "... src/ColorDBL.o"
	@echo "... src/ColorDBL.i"
	@echo "... src/ColorDBL.s"
	@echo "... src/LightSource.o"
	@echo "... src/LightSource.i"
	@echo "... src/LightSource.s"
	@echo "... src/Pixel.o"
	@echo "... src/Pixel.i"
	@echo "... src/Pixel.s"
	@echo "... src/Ray.o"
	@echo "... src/Ray.i"
	@echo "... src/Ray.s"
	@echo "... src/Tetrahedron.o"
	@echo "... src/Tetrahedron.i"
	@echo "... src/Tetrahedron.s"
	@echo "... src/Triangle.o"
	@echo "... src/Triangle.i"
	@echo "... src/Triangle.s"
	@echo "... src/main.o"
	@echo "... src/main.i"
	@echo "... src/main.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

