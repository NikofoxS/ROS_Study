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
CMAKE_SOURCE_DIR = /home/s/mycode/pra_rob/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/s/mycode/pra_rob/build

# Include any dependencies generated for this target.
include beginner_tutorials/CMakeFiles/add_two_ints_server.dir/depend.make

# Include the progress variables for this target.
include beginner_tutorials/CMakeFiles/add_two_ints_server.dir/progress.make

# Include the compile flags for this target's objects.
include beginner_tutorials/CMakeFiles/add_two_ints_server.dir/flags.make

beginner_tutorials/CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.o: beginner_tutorials/CMakeFiles/add_two_ints_server.dir/flags.make
beginner_tutorials/CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.o: /home/s/mycode/pra_rob/src/beginner_tutorials/src/add_two_ints_server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/s/mycode/pra_rob/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object beginner_tutorials/CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.o"
	cd /home/s/mycode/pra_rob/build/beginner_tutorials && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.o -c /home/s/mycode/pra_rob/src/beginner_tutorials/src/add_two_ints_server.cpp

beginner_tutorials/CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.i"
	cd /home/s/mycode/pra_rob/build/beginner_tutorials && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/s/mycode/pra_rob/src/beginner_tutorials/src/add_two_ints_server.cpp > CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.i

beginner_tutorials/CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.s"
	cd /home/s/mycode/pra_rob/build/beginner_tutorials && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/s/mycode/pra_rob/src/beginner_tutorials/src/add_two_ints_server.cpp -o CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.s

beginner_tutorials/CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.o.requires:

.PHONY : beginner_tutorials/CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.o.requires

beginner_tutorials/CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.o.provides: beginner_tutorials/CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.o.requires
	$(MAKE) -f beginner_tutorials/CMakeFiles/add_two_ints_server.dir/build.make beginner_tutorials/CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.o.provides.build
.PHONY : beginner_tutorials/CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.o.provides

beginner_tutorials/CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.o.provides.build: beginner_tutorials/CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.o


# Object files for target add_two_ints_server
add_two_ints_server_OBJECTS = \
"CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.o"

# External object files for target add_two_ints_server
add_two_ints_server_EXTERNAL_OBJECTS =

/home/s/mycode/pra_rob/devel/lib/beginner_tutorials/add_two_ints_server: beginner_tutorials/CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.o
/home/s/mycode/pra_rob/devel/lib/beginner_tutorials/add_two_ints_server: beginner_tutorials/CMakeFiles/add_two_ints_server.dir/build.make
/home/s/mycode/pra_rob/devel/lib/beginner_tutorials/add_two_ints_server: /opt/ros/kinetic/lib/libroscpp.so
/home/s/mycode/pra_rob/devel/lib/beginner_tutorials/add_two_ints_server: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/s/mycode/pra_rob/devel/lib/beginner_tutorials/add_two_ints_server: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/s/mycode/pra_rob/devel/lib/beginner_tutorials/add_two_ints_server: /opt/ros/kinetic/lib/librosconsole.so
/home/s/mycode/pra_rob/devel/lib/beginner_tutorials/add_two_ints_server: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/s/mycode/pra_rob/devel/lib/beginner_tutorials/add_two_ints_server: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/s/mycode/pra_rob/devel/lib/beginner_tutorials/add_two_ints_server: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/s/mycode/pra_rob/devel/lib/beginner_tutorials/add_two_ints_server: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/s/mycode/pra_rob/devel/lib/beginner_tutorials/add_two_ints_server: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/s/mycode/pra_rob/devel/lib/beginner_tutorials/add_two_ints_server: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/s/mycode/pra_rob/devel/lib/beginner_tutorials/add_two_ints_server: /opt/ros/kinetic/lib/librostime.so
/home/s/mycode/pra_rob/devel/lib/beginner_tutorials/add_two_ints_server: /opt/ros/kinetic/lib/libcpp_common.so
/home/s/mycode/pra_rob/devel/lib/beginner_tutorials/add_two_ints_server: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/s/mycode/pra_rob/devel/lib/beginner_tutorials/add_two_ints_server: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/s/mycode/pra_rob/devel/lib/beginner_tutorials/add_two_ints_server: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/s/mycode/pra_rob/devel/lib/beginner_tutorials/add_two_ints_server: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/s/mycode/pra_rob/devel/lib/beginner_tutorials/add_two_ints_server: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/s/mycode/pra_rob/devel/lib/beginner_tutorials/add_two_ints_server: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/s/mycode/pra_rob/devel/lib/beginner_tutorials/add_two_ints_server: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/s/mycode/pra_rob/devel/lib/beginner_tutorials/add_two_ints_server: beginner_tutorials/CMakeFiles/add_two_ints_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/s/mycode/pra_rob/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/s/mycode/pra_rob/devel/lib/beginner_tutorials/add_two_ints_server"
	cd /home/s/mycode/pra_rob/build/beginner_tutorials && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/add_two_ints_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
beginner_tutorials/CMakeFiles/add_two_ints_server.dir/build: /home/s/mycode/pra_rob/devel/lib/beginner_tutorials/add_two_ints_server

.PHONY : beginner_tutorials/CMakeFiles/add_two_ints_server.dir/build

beginner_tutorials/CMakeFiles/add_two_ints_server.dir/requires: beginner_tutorials/CMakeFiles/add_two_ints_server.dir/src/add_two_ints_server.cpp.o.requires

.PHONY : beginner_tutorials/CMakeFiles/add_two_ints_server.dir/requires

beginner_tutorials/CMakeFiles/add_two_ints_server.dir/clean:
	cd /home/s/mycode/pra_rob/build/beginner_tutorials && $(CMAKE_COMMAND) -P CMakeFiles/add_two_ints_server.dir/cmake_clean.cmake
.PHONY : beginner_tutorials/CMakeFiles/add_two_ints_server.dir/clean

beginner_tutorials/CMakeFiles/add_two_ints_server.dir/depend:
	cd /home/s/mycode/pra_rob/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/s/mycode/pra_rob/src /home/s/mycode/pra_rob/src/beginner_tutorials /home/s/mycode/pra_rob/build /home/s/mycode/pra_rob/build/beginner_tutorials /home/s/mycode/pra_rob/build/beginner_tutorials/CMakeFiles/add_two_ints_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : beginner_tutorials/CMakeFiles/add_two_ints_server.dir/depend

