# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/src/hrwros/hrwros_week2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/build/hrwros_week2

# Include any dependencies generated for this target.
include gtest/googlemock/CMakeFiles/gmock_main.dir/depend.make

# Include the progress variables for this target.
include gtest/googlemock/CMakeFiles/gmock_main.dir/progress.make

# Include the compile flags for this target's objects.
include gtest/googlemock/CMakeFiles/gmock_main.dir/flags.make

gtest/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.o: gtest/googlemock/CMakeFiles/gmock_main.dir/flags.make
gtest/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.o: /usr/src/googletest/googlemock/src/gmock_main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/build/hrwros_week2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object gtest/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.o"
	cd /mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/build/hrwros_week2/gtest/googlemock && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gmock_main.dir/src/gmock_main.cc.o -c /usr/src/googletest/googlemock/src/gmock_main.cc

gtest/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gmock_main.dir/src/gmock_main.cc.i"
	cd /mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/build/hrwros_week2/gtest/googlemock && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /usr/src/googletest/googlemock/src/gmock_main.cc > CMakeFiles/gmock_main.dir/src/gmock_main.cc.i

gtest/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gmock_main.dir/src/gmock_main.cc.s"
	cd /mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/build/hrwros_week2/gtest/googlemock && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /usr/src/googletest/googlemock/src/gmock_main.cc -o CMakeFiles/gmock_main.dir/src/gmock_main.cc.s

# Object files for target gmock_main
gmock_main_OBJECTS = \
"CMakeFiles/gmock_main.dir/src/gmock_main.cc.o"

# External object files for target gmock_main
gmock_main_EXTERNAL_OBJECTS =

gtest/googlemock/libgmock_main.so: gtest/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.o
gtest/googlemock/libgmock_main.so: gtest/googlemock/CMakeFiles/gmock_main.dir/build.make
gtest/googlemock/libgmock_main.so: gtest/googlemock/libgmock.so
gtest/googlemock/libgmock_main.so: gtest/googlemock/gtest/libgtest.so
gtest/googlemock/libgmock_main.so: gtest/googlemock/CMakeFiles/gmock_main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/build/hrwros_week2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libgmock_main.so"
	cd /mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/build/hrwros_week2/gtest/googlemock && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gmock_main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
gtest/googlemock/CMakeFiles/gmock_main.dir/build: gtest/googlemock/libgmock_main.so

.PHONY : gtest/googlemock/CMakeFiles/gmock_main.dir/build

gtest/googlemock/CMakeFiles/gmock_main.dir/clean:
	cd /mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/build/hrwros_week2/gtest/googlemock && $(CMAKE_COMMAND) -P CMakeFiles/gmock_main.dir/cmake_clean.cmake
.PHONY : gtest/googlemock/CMakeFiles/gmock_main.dir/clean

gtest/googlemock/CMakeFiles/gmock_main.dir/depend:
	cd /mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/build/hrwros_week2 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/src/hrwros/hrwros_week2 /usr/src/googletest/googlemock /mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/build/hrwros_week2 /mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/build/hrwros_week2/gtest/googlemock /mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/build/hrwros_week2/gtest/googlemock/CMakeFiles/gmock_main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : gtest/googlemock/CMakeFiles/gmock_main.dir/depend

