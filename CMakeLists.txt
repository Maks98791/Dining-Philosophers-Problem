cmake_minimum_required(VERSION 3.15)
project(SO2_DiningPhilosophers)

set(CMAKE_CXX_STANDARD 14)

SET(GCC_COVERAGE_COMPILE_FLAGS " -pthread -lncurses")
SET(GCC_COVERAGE_LINK_FLAGS    " -pthread -lncurses")
SET(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS} ${GCC_COVERAGE_COMPILE_FLAGS}")
SET(CMAKE_EXE_LINKER_FLAGS  "${CMAKE_EXE_LINKER_FLAGS} ${GCC_COVERAGE_LINK_FLAGS}")

find_package(Curses REQUIRED)

add_executable(SO2_DiningPhilosophers main.cpp)

target_link_libraries(SO2_DiningPhilosophers ncurses)