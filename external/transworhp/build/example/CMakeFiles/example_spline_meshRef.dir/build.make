# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/luis/Backup2018Seafile/galileonautic/external/transworhp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/luis/Backup2018Seafile/galileonautic/external/transworhp/build

# Include any dependencies generated for this target.
include example/CMakeFiles/example_spline_meshRef.dir/depend.make

# Include the progress variables for this target.
include example/CMakeFiles/example_spline_meshRef.dir/progress.make

# Include the compile flags for this target's objects.
include example/CMakeFiles/example_spline_meshRef.dir/flags.make

example/CMakeFiles/example_spline_meshRef.dir/spline_meshRef.cpp.o: example/CMakeFiles/example_spline_meshRef.dir/flags.make
example/CMakeFiles/example_spline_meshRef.dir/spline_meshRef.cpp.o: ../example/spline_meshRef.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/luis/Backup2018Seafile/galileonautic/external/transworhp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object example/CMakeFiles/example_spline_meshRef.dir/spline_meshRef.cpp.o"
	cd /home/luis/Backup2018Seafile/galileonautic/external/transworhp/build/example && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example_spline_meshRef.dir/spline_meshRef.cpp.o -c /home/luis/Backup2018Seafile/galileonautic/external/transworhp/example/spline_meshRef.cpp

example/CMakeFiles/example_spline_meshRef.dir/spline_meshRef.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example_spline_meshRef.dir/spline_meshRef.cpp.i"
	cd /home/luis/Backup2018Seafile/galileonautic/external/transworhp/build/example && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/luis/Backup2018Seafile/galileonautic/external/transworhp/example/spline_meshRef.cpp > CMakeFiles/example_spline_meshRef.dir/spline_meshRef.cpp.i

example/CMakeFiles/example_spline_meshRef.dir/spline_meshRef.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example_spline_meshRef.dir/spline_meshRef.cpp.s"
	cd /home/luis/Backup2018Seafile/galileonautic/external/transworhp/build/example && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/luis/Backup2018Seafile/galileonautic/external/transworhp/example/spline_meshRef.cpp -o CMakeFiles/example_spline_meshRef.dir/spline_meshRef.cpp.s

example/CMakeFiles/example_spline_meshRef.dir/spline_meshRef.cpp.o.requires:

.PHONY : example/CMakeFiles/example_spline_meshRef.dir/spline_meshRef.cpp.o.requires

example/CMakeFiles/example_spline_meshRef.dir/spline_meshRef.cpp.o.provides: example/CMakeFiles/example_spline_meshRef.dir/spline_meshRef.cpp.o.requires
	$(MAKE) -f example/CMakeFiles/example_spline_meshRef.dir/build.make example/CMakeFiles/example_spline_meshRef.dir/spline_meshRef.cpp.o.provides.build
.PHONY : example/CMakeFiles/example_spline_meshRef.dir/spline_meshRef.cpp.o.provides

example/CMakeFiles/example_spline_meshRef.dir/spline_meshRef.cpp.o.provides.build: example/CMakeFiles/example_spline_meshRef.dir/spline_meshRef.cpp.o


# Object files for target example_spline_meshRef
example_spline_meshRef_OBJECTS = \
"CMakeFiles/example_spline_meshRef.dir/spline_meshRef.cpp.o"

# External object files for target example_spline_meshRef
example_spline_meshRef_EXTERNAL_OBJECTS =

example/spline_meshRef: example/CMakeFiles/example_spline_meshRef.dir/spline_meshRef.cpp.o
example/spline_meshRef: example/CMakeFiles/example_spline_meshRef.dir/build.make
example/spline_meshRef: src/libTransWORHP.so
example/spline_meshRef: src/libxmlio.a
example/spline_meshRef: ../include/worhp/../../lib/libworhp.so
example/spline_meshRef: /usr/lib/x86_64-linux-gnu/libGLEW.so
example/spline_meshRef: /usr/lib/x86_64-linux-gnu/libGL.so
example/spline_meshRef: /usr/lib/x86_64-linux-gnu/libGLU.so
example/spline_meshRef: example/CMakeFiles/example_spline_meshRef.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/luis/Backup2018Seafile/galileonautic/external/transworhp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable spline_meshRef"
	cd /home/luis/Backup2018Seafile/galileonautic/external/transworhp/build/example && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example_spline_meshRef.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
example/CMakeFiles/example_spline_meshRef.dir/build: example/spline_meshRef

.PHONY : example/CMakeFiles/example_spline_meshRef.dir/build

example/CMakeFiles/example_spline_meshRef.dir/requires: example/CMakeFiles/example_spline_meshRef.dir/spline_meshRef.cpp.o.requires

.PHONY : example/CMakeFiles/example_spline_meshRef.dir/requires

example/CMakeFiles/example_spline_meshRef.dir/clean:
	cd /home/luis/Backup2018Seafile/galileonautic/external/transworhp/build/example && $(CMAKE_COMMAND) -P CMakeFiles/example_spline_meshRef.dir/cmake_clean.cmake
.PHONY : example/CMakeFiles/example_spline_meshRef.dir/clean

example/CMakeFiles/example_spline_meshRef.dir/depend:
	cd /home/luis/Backup2018Seafile/galileonautic/external/transworhp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/luis/Backup2018Seafile/galileonautic/external/transworhp /home/luis/Backup2018Seafile/galileonautic/external/transworhp/example /home/luis/Backup2018Seafile/galileonautic/external/transworhp/build /home/luis/Backup2018Seafile/galileonautic/external/transworhp/build/example /home/luis/Backup2018Seafile/galileonautic/external/transworhp/build/example/CMakeFiles/example_spline_meshRef.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : example/CMakeFiles/example_spline_meshRef.dir/depend

