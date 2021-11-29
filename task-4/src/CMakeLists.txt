# set minimum cmake version
cmake_minimum_required(VERSION 3.5 FATAL_ERROR)

# project name and language
project(task1 LANGUAGES CXX)

set(BUILD_DIR "${CMAKE_BINARY_DIR}")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${BUILD_DIR}/../../bin")

set(BINARY_DIR "${CMAKE_BINARY_DIR}")

# Source files list
set(SOURCE_FILES
    # Headers
    rnd.h
        sphere.h
        tetrahedron.h
    shape.h
    container.h

    # Sources
        sphere.cpp
        tetrahedron.cpp
    shape.cpp
    container.cpp
    main.cpp
        parallelepiped.cpp parallelepiped.h)

add_executable(task ${SOURCE_FILES})
