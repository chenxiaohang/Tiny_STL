# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/bing/CPP/Tiny_STL

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/bing/CPP/Tiny_STL/build

# Include any dependencies generated for this target.
include CMakeFiles/test_vector.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test_vector.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_vector.dir/flags.make

CMakeFiles/test_vector.dir/test/test_vector.cpp.o: CMakeFiles/test_vector.dir/flags.make
CMakeFiles/test_vector.dir/test/test_vector.cpp.o: ../test/test_vector.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bing/CPP/Tiny_STL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test_vector.dir/test/test_vector.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_vector.dir/test/test_vector.cpp.o -c /home/bing/CPP/Tiny_STL/test/test_vector.cpp

CMakeFiles/test_vector.dir/test/test_vector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_vector.dir/test/test_vector.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bing/CPP/Tiny_STL/test/test_vector.cpp > CMakeFiles/test_vector.dir/test/test_vector.cpp.i

CMakeFiles/test_vector.dir/test/test_vector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_vector.dir/test/test_vector.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bing/CPP/Tiny_STL/test/test_vector.cpp -o CMakeFiles/test_vector.dir/test/test_vector.cpp.s

CMakeFiles/test_vector.dir/test/test_vector.cpp.o.requires:

.PHONY : CMakeFiles/test_vector.dir/test/test_vector.cpp.o.requires

CMakeFiles/test_vector.dir/test/test_vector.cpp.o.provides: CMakeFiles/test_vector.dir/test/test_vector.cpp.o.requires
	$(MAKE) -f CMakeFiles/test_vector.dir/build.make CMakeFiles/test_vector.dir/test/test_vector.cpp.o.provides.build
.PHONY : CMakeFiles/test_vector.dir/test/test_vector.cpp.o.provides

CMakeFiles/test_vector.dir/test/test_vector.cpp.o.provides.build: CMakeFiles/test_vector.dir/test/test_vector.cpp.o


# Object files for target test_vector
test_vector_OBJECTS = \
"CMakeFiles/test_vector.dir/test/test_vector.cpp.o"

# External object files for target test_vector
test_vector_EXTERNAL_OBJECTS =

../bin/test_vector: CMakeFiles/test_vector.dir/test/test_vector.cpp.o
../bin/test_vector: CMakeFiles/test_vector.dir/build.make
../bin/test_vector: src/libsrcs.a
../bin/test_vector: CMakeFiles/test_vector.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/bing/CPP/Tiny_STL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/test_vector"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_vector.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_vector.dir/build: ../bin/test_vector

.PHONY : CMakeFiles/test_vector.dir/build

CMakeFiles/test_vector.dir/requires: CMakeFiles/test_vector.dir/test/test_vector.cpp.o.requires

.PHONY : CMakeFiles/test_vector.dir/requires

CMakeFiles/test_vector.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_vector.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_vector.dir/clean

CMakeFiles/test_vector.dir/depend:
	cd /home/bing/CPP/Tiny_STL/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bing/CPP/Tiny_STL /home/bing/CPP/Tiny_STL /home/bing/CPP/Tiny_STL/build /home/bing/CPP/Tiny_STL/build /home/bing/CPP/Tiny_STL/build/CMakeFiles/test_vector.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_vector.dir/depend
