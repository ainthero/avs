# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

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
CMAKE_COMMAND = /app/extra/clion/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /app/extra/clion/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/src/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/task.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/task.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/task.dir/flags.make

CMakeFiles/task.dir/sphere.cpp.o: CMakeFiles/task.dir/flags.make
CMakeFiles/task.dir/sphere.cpp.o: ../sphere.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/task.dir/sphere.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/task.dir/sphere.cpp.o -c /home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/src/sphere.cpp

CMakeFiles/task.dir/sphere.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/task.dir/sphere.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/src/sphere.cpp > CMakeFiles/task.dir/sphere.cpp.i

CMakeFiles/task.dir/sphere.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/task.dir/sphere.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/src/sphere.cpp -o CMakeFiles/task.dir/sphere.cpp.s

CMakeFiles/task.dir/tetrahedron.cpp.o: CMakeFiles/task.dir/flags.make
CMakeFiles/task.dir/tetrahedron.cpp.o: ../tetrahedron.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/task.dir/tetrahedron.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/task.dir/tetrahedron.cpp.o -c /home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/src/tetrahedron.cpp

CMakeFiles/task.dir/tetrahedron.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/task.dir/tetrahedron.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/src/tetrahedron.cpp > CMakeFiles/task.dir/tetrahedron.cpp.i

CMakeFiles/task.dir/tetrahedron.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/task.dir/tetrahedron.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/src/tetrahedron.cpp -o CMakeFiles/task.dir/tetrahedron.cpp.s

CMakeFiles/task.dir/shape.cpp.o: CMakeFiles/task.dir/flags.make
CMakeFiles/task.dir/shape.cpp.o: ../shape.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/task.dir/shape.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/task.dir/shape.cpp.o -c /home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/src/shape.cpp

CMakeFiles/task.dir/shape.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/task.dir/shape.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/src/shape.cpp > CMakeFiles/task.dir/shape.cpp.i

CMakeFiles/task.dir/shape.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/task.dir/shape.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/src/shape.cpp -o CMakeFiles/task.dir/shape.cpp.s

CMakeFiles/task.dir/container.cpp.o: CMakeFiles/task.dir/flags.make
CMakeFiles/task.dir/container.cpp.o: ../container.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/task.dir/container.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/task.dir/container.cpp.o -c /home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/src/container.cpp

CMakeFiles/task.dir/container.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/task.dir/container.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/src/container.cpp > CMakeFiles/task.dir/container.cpp.i

CMakeFiles/task.dir/container.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/task.dir/container.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/src/container.cpp -o CMakeFiles/task.dir/container.cpp.s

CMakeFiles/task.dir/main.cpp.o: CMakeFiles/task.dir/flags.make
CMakeFiles/task.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/task.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/task.dir/main.cpp.o -c /home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/src/main.cpp

CMakeFiles/task.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/task.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/src/main.cpp > CMakeFiles/task.dir/main.cpp.i

CMakeFiles/task.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/task.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/src/main.cpp -o CMakeFiles/task.dir/main.cpp.s

CMakeFiles/task.dir/parallelepiped.cpp.o: CMakeFiles/task.dir/flags.make
CMakeFiles/task.dir/parallelepiped.cpp.o: ../parallelepiped.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/task.dir/parallelepiped.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/task.dir/parallelepiped.cpp.o -c /home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/src/parallelepiped.cpp

CMakeFiles/task.dir/parallelepiped.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/task.dir/parallelepiped.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/src/parallelepiped.cpp > CMakeFiles/task.dir/parallelepiped.cpp.i

CMakeFiles/task.dir/parallelepiped.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/task.dir/parallelepiped.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/src/parallelepiped.cpp -o CMakeFiles/task.dir/parallelepiped.cpp.s

# Object files for target task
task_OBJECTS = \
"CMakeFiles/task.dir/sphere.cpp.o" \
"CMakeFiles/task.dir/tetrahedron.cpp.o" \
"CMakeFiles/task.dir/shape.cpp.o" \
"CMakeFiles/task.dir/container.cpp.o" \
"CMakeFiles/task.dir/main.cpp.o" \
"CMakeFiles/task.dir/parallelepiped.cpp.o"

# External object files for target task
task_EXTERNAL_OBJECTS =

/home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/bin/task: CMakeFiles/task.dir/sphere.cpp.o
/home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/bin/task: CMakeFiles/task.dir/tetrahedron.cpp.o
/home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/bin/task: CMakeFiles/task.dir/shape.cpp.o
/home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/bin/task: CMakeFiles/task.dir/container.cpp.o
/home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/bin/task: CMakeFiles/task.dir/main.cpp.o
/home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/bin/task: CMakeFiles/task.dir/parallelepiped.cpp.o
/home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/bin/task: CMakeFiles/task.dir/build.make
/home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/bin/task: CMakeFiles/task.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable /home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/bin/task"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/task.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/task.dir/build: /home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/bin/task
.PHONY : CMakeFiles/task.dir/build

CMakeFiles/task.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/task.dir/cmake_clean.cmake
.PHONY : CMakeFiles/task.dir/clean

CMakeFiles/task.dir/depend:
	cd /home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/src/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/src /home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/src /home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/src/cmake-build-debug /home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/src/cmake-build-debug /home/ainthero/CLionProjects/02-02-oop-c++dyn/task-1/src/cmake-build-debug/CMakeFiles/task.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/task.dir/depend

