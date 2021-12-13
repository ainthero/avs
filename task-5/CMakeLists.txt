cmake_minimum_required(VERSION 3.20)
project(avs5)
add_executable(avs5 main.cpp)
set(THREADS_PREFER_PTHREAD_FLAG ON)
find_package(Threads REQUIRED)
target_link_libraries(avs5 PRIVATE Threads::Threads)

set(CMAKE_CXX_STANDARD 17)


