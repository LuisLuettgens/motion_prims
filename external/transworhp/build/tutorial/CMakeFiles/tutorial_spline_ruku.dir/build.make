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
include tutorial/CMakeFiles/tutorial_spline_ruku.dir/depend.make

# Include the progress variables for this target.
include tutorial/CMakeFiles/tutorial_spline_ruku.dir/progress.make

# Include the compile flags for this target's objects.
include tutorial/CMakeFiles/tutorial_spline_ruku.dir/flags.make

tutorial/CMakeFiles/tutorial_spline_ruku.dir/spline_ruku.cpp.o: tutorial/CMakeFiles/tutorial_spline_ruku.dir/flags.make
tutorial/CMakeFiles/tutorial_spline_ruku.dir/spline_ruku.cpp.o: ../tutorial/spline_ruku.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/luis/Backup2018Seafile/galileonautic/external/transworhp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tutorial/CMakeFiles/tutorial_spline_ruku.dir/spline_ruku.cpp.o"
	cd /home/luis/Backup2018Seafile/galileonautic/external/transworhp/build/tutorial && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tutorial_spline_ruku.dir/spline_ruku.cpp.o -c /home/luis/Backup2018Seafile/galileonautic/external/transworhp/tutorial/spline_ruku.cpp

tutorial/CMakeFiles/tutorial_spline_ruku.dir/spline_ruku.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tutorial_spline_ruku.dir/spline_ruku.cpp.i"
	cd /home/luis/Backup2018Seafile/galileonautic/external/transworhp/build/tutorial && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/luis/Backup2018Seafile/galileonautic/external/transworhp/tutorial/spline_ruku.cpp > CMakeFiles/tutorial_spline_ruku.dir/spline_ruku.cpp.i

tutorial/CMakeFiles/tutorial_spline_ruku.dir/spline_ruku.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tutorial_spline_ruku.dir/spline_ruku.cpp.s"
	cd /home/luis/Backup2018Seafile/galileonautic/external/transworhp/build/tutorial && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/luis/Backup2018Seafile/galileonautic/external/transworhp/tutorial/spline_ruku.cpp -o CMakeFiles/tutorial_spline_ruku.dir/spline_ruku.cpp.s

tutorial/CMakeFiles/tutorial_spline_ruku.dir/spline_ruku.cpp.o.requires:

.PHONY : tutorial/CMakeFiles/tutorial_spline_ruku.dir/spline_ruku.cpp.o.requires

tutorial/CMakeFiles/tutorial_spline_ruku.dir/spline_ruku.cpp.o.provides: tutorial/CMakeFiles/tutorial_spline_ruku.dir/spline_ruku.cpp.o.requires
	$(MAKE) -f tutorial/CMakeFiles/tutorial_spline_ruku.dir/build.make tutorial/CMakeFiles/tutorial_spline_ruku.dir/spline_ruku.cpp.o.provides.build
.PHONY : tutorial/CMakeFiles/tutorial_spline_ruku.dir/spline_ruku.cpp.o.provides

tutorial/CMakeFiles/tutorial_spline_ruku.dir/spline_ruku.cpp.o.provides.build: tutorial/CMakeFiles/tutorial_spline_ruku.dir/spline_ruku.cpp.o


# Object files for target tutorial_spline_ruku
tutorial_spline_ruku_OBJECTS = \
"CMakeFiles/tutorial_spline_ruku.dir/spline_ruku.cpp.o"

# External object files for target tutorial_spline_ruku
tutorial_spline_ruku_EXTERNAL_OBJECTS =

tutorial/spline_ruku: tutorial/CMakeFiles/tutorial_spline_ruku.dir/spline_ruku.cpp.o
tutorial/spline_ruku: tutorial/CMakeFiles/tutorial_spline_ruku.dir/build.make
tutorial/spline_ruku: src/libTransWORHP.so
tutorial/spline_ruku: src/libxmlio.a
tutorial/spline_ruku: ../include/worhp/../../lib/libworhp.so
tutorial/spline_ruku: /usr/lib/x86_64-linux-gnu/libGLEW.so
tutorial/spline_ruku: /usr/lib/x86_64-linux-gnu/libGL.so
tutorial/spline_ruku: /usr/lib/x86_64-linux-gnu/libGLU.so
tutorial/spline_ruku: tutorial/CMakeFiles/tutorial_spline_ruku.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/luis/Backup2018Seafile/galileonautic/external/transworhp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable spline_ruku"
	cd /home/luis/Backup2018Seafile/galileonautic/external/transworhp/build/tutorial && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tutorial_spline_ruku.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tutorial/CMakeFiles/tutorial_spline_ruku.dir/build: tutorial/spline_ruku

.PHONY : tutorial/CMakeFiles/tutorial_spline_ruku.dir/build

tutorial/CMakeFiles/tutorial_spline_ruku.dir/requires: tutorial/CMakeFiles/tutorial_spline_ruku.dir/spline_ruku.cpp.o.requires

.PHONY : tutorial/CMakeFiles/tutorial_spline_ruku.dir/requires

tutorial/CMakeFiles/tutorial_spline_ruku.dir/clean:
	cd /home/luis/Backup2018Seafile/galileonautic/external/transworhp/build/tutorial && $(CMAKE_COMMAND) -P CMakeFiles/tutorial_spline_ruku.dir/cmake_clean.cmake
.PHONY : tutorial/CMakeFiles/tutorial_spline_ruku.dir/clean

tutorial/CMakeFiles/tutorial_spline_ruku.dir/depend:
	cd /home/luis/Backup2018Seafile/galileonautic/external/transworhp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/luis/Backup2018Seafile/galileonautic/external/transworhp /home/luis/Backup2018Seafile/galileonautic/external/transworhp/tutorial /home/luis/Backup2018Seafile/galileonautic/external/transworhp/build /home/luis/Backup2018Seafile/galileonautic/external/transworhp/build/tutorial /home/luis/Backup2018Seafile/galileonautic/external/transworhp/build/tutorial/CMakeFiles/tutorial_spline_ruku.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tutorial/CMakeFiles/tutorial_spline_ruku.dir/depend

