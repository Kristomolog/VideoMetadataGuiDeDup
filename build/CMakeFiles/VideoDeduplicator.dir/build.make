# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ahmed/c++/guivideo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ahmed/c++/guivideo/build

# Include any dependencies generated for this target.
include CMakeFiles/VideoDeduplicator.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/VideoDeduplicator.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/VideoDeduplicator.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/VideoDeduplicator.dir/flags.make

CMakeFiles/VideoDeduplicator.dir/VideoDeduplicator_autogen/mocs_compilation.cpp.o: CMakeFiles/VideoDeduplicator.dir/flags.make
CMakeFiles/VideoDeduplicator.dir/VideoDeduplicator_autogen/mocs_compilation.cpp.o: VideoDeduplicator_autogen/mocs_compilation.cpp
CMakeFiles/VideoDeduplicator.dir/VideoDeduplicator_autogen/mocs_compilation.cpp.o: CMakeFiles/VideoDeduplicator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ahmed/c++/guivideo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/VideoDeduplicator.dir/VideoDeduplicator_autogen/mocs_compilation.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/VideoDeduplicator.dir/VideoDeduplicator_autogen/mocs_compilation.cpp.o -MF CMakeFiles/VideoDeduplicator.dir/VideoDeduplicator_autogen/mocs_compilation.cpp.o.d -o CMakeFiles/VideoDeduplicator.dir/VideoDeduplicator_autogen/mocs_compilation.cpp.o -c /home/ahmed/c++/guivideo/build/VideoDeduplicator_autogen/mocs_compilation.cpp

CMakeFiles/VideoDeduplicator.dir/VideoDeduplicator_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/VideoDeduplicator.dir/VideoDeduplicator_autogen/mocs_compilation.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ahmed/c++/guivideo/build/VideoDeduplicator_autogen/mocs_compilation.cpp > CMakeFiles/VideoDeduplicator.dir/VideoDeduplicator_autogen/mocs_compilation.cpp.i

CMakeFiles/VideoDeduplicator.dir/VideoDeduplicator_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/VideoDeduplicator.dir/VideoDeduplicator_autogen/mocs_compilation.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ahmed/c++/guivideo/build/VideoDeduplicator_autogen/mocs_compilation.cpp -o CMakeFiles/VideoDeduplicator.dir/VideoDeduplicator_autogen/mocs_compilation.cpp.s

CMakeFiles/VideoDeduplicator.dir/main.cpp.o: CMakeFiles/VideoDeduplicator.dir/flags.make
CMakeFiles/VideoDeduplicator.dir/main.cpp.o: ../main.cpp
CMakeFiles/VideoDeduplicator.dir/main.cpp.o: CMakeFiles/VideoDeduplicator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ahmed/c++/guivideo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/VideoDeduplicator.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/VideoDeduplicator.dir/main.cpp.o -MF CMakeFiles/VideoDeduplicator.dir/main.cpp.o.d -o CMakeFiles/VideoDeduplicator.dir/main.cpp.o -c /home/ahmed/c++/guivideo/main.cpp

CMakeFiles/VideoDeduplicator.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/VideoDeduplicator.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ahmed/c++/guivideo/main.cpp > CMakeFiles/VideoDeduplicator.dir/main.cpp.i

CMakeFiles/VideoDeduplicator.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/VideoDeduplicator.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ahmed/c++/guivideo/main.cpp -o CMakeFiles/VideoDeduplicator.dir/main.cpp.s

# Object files for target VideoDeduplicator
VideoDeduplicator_OBJECTS = \
"CMakeFiles/VideoDeduplicator.dir/VideoDeduplicator_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/VideoDeduplicator.dir/main.cpp.o"

# External object files for target VideoDeduplicator
VideoDeduplicator_EXTERNAL_OBJECTS =

VideoDeduplicator: CMakeFiles/VideoDeduplicator.dir/VideoDeduplicator_autogen/mocs_compilation.cpp.o
VideoDeduplicator: CMakeFiles/VideoDeduplicator.dir/main.cpp.o
VideoDeduplicator: CMakeFiles/VideoDeduplicator.dir/build.make
VideoDeduplicator: /usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.15.3
VideoDeduplicator: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.15.3
VideoDeduplicator: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.15.3
VideoDeduplicator: CMakeFiles/VideoDeduplicator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ahmed/c++/guivideo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable VideoDeduplicator"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/VideoDeduplicator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/VideoDeduplicator.dir/build: VideoDeduplicator
.PHONY : CMakeFiles/VideoDeduplicator.dir/build

CMakeFiles/VideoDeduplicator.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/VideoDeduplicator.dir/cmake_clean.cmake
.PHONY : CMakeFiles/VideoDeduplicator.dir/clean

CMakeFiles/VideoDeduplicator.dir/depend:
	cd /home/ahmed/c++/guivideo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ahmed/c++/guivideo /home/ahmed/c++/guivideo /home/ahmed/c++/guivideo/build /home/ahmed/c++/guivideo/build /home/ahmed/c++/guivideo/build/CMakeFiles/VideoDeduplicator.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/VideoDeduplicator.dir/depend

