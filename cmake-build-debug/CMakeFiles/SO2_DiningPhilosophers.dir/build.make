# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /snap/clion/107/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/107/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/maks/Code/SO2_DiningPhilosophers

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/maks/Code/SO2_DiningPhilosophers/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/SO2_DiningPhilosophers.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/SO2_DiningPhilosophers.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SO2_DiningPhilosophers.dir/flags.make

CMakeFiles/SO2_DiningPhilosophers.dir/main.cpp.o: CMakeFiles/SO2_DiningPhilosophers.dir/flags.make
CMakeFiles/SO2_DiningPhilosophers.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/maks/Code/SO2_DiningPhilosophers/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/SO2_DiningPhilosophers.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SO2_DiningPhilosophers.dir/main.cpp.o -c /home/maks/Code/SO2_DiningPhilosophers/main.cpp

CMakeFiles/SO2_DiningPhilosophers.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SO2_DiningPhilosophers.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/maks/Code/SO2_DiningPhilosophers/main.cpp > CMakeFiles/SO2_DiningPhilosophers.dir/main.cpp.i

CMakeFiles/SO2_DiningPhilosophers.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SO2_DiningPhilosophers.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/maks/Code/SO2_DiningPhilosophers/main.cpp -o CMakeFiles/SO2_DiningPhilosophers.dir/main.cpp.s

# Object files for target SO2_DiningPhilosophers
SO2_DiningPhilosophers_OBJECTS = \
"CMakeFiles/SO2_DiningPhilosophers.dir/main.cpp.o"

# External object files for target SO2_DiningPhilosophers
SO2_DiningPhilosophers_EXTERNAL_OBJECTS =

SO2_DiningPhilosophers: CMakeFiles/SO2_DiningPhilosophers.dir/main.cpp.o
SO2_DiningPhilosophers: CMakeFiles/SO2_DiningPhilosophers.dir/build.make
SO2_DiningPhilosophers: CMakeFiles/SO2_DiningPhilosophers.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/maks/Code/SO2_DiningPhilosophers/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable SO2_DiningPhilosophers"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SO2_DiningPhilosophers.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SO2_DiningPhilosophers.dir/build: SO2_DiningPhilosophers

.PHONY : CMakeFiles/SO2_DiningPhilosophers.dir/build

CMakeFiles/SO2_DiningPhilosophers.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/SO2_DiningPhilosophers.dir/cmake_clean.cmake
.PHONY : CMakeFiles/SO2_DiningPhilosophers.dir/clean

CMakeFiles/SO2_DiningPhilosophers.dir/depend:
	cd /home/maks/Code/SO2_DiningPhilosophers/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/maks/Code/SO2_DiningPhilosophers /home/maks/Code/SO2_DiningPhilosophers /home/maks/Code/SO2_DiningPhilosophers/cmake-build-debug /home/maks/Code/SO2_DiningPhilosophers/cmake-build-debug /home/maks/Code/SO2_DiningPhilosophers/cmake-build-debug/CMakeFiles/SO2_DiningPhilosophers.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/SO2_DiningPhilosophers.dir/depend

