# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.10

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\Program Files\JetBrains\CLion 2018.1.2\bin\cmake\bin\cmake.exe"

# The command to remove a file.
RM = "D:\Program Files\JetBrains\CLion 2018.1.2\bin\cmake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\909845\CLionProjects\G711Codec

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\909845\CLionProjects\G711Codec\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/G711Codec.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/G711Codec.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/G711Codec.dir/flags.make

CMakeFiles/G711Codec.dir/src/StartUp/Main.cpp.obj: CMakeFiles/G711Codec.dir/flags.make
CMakeFiles/G711Codec.dir/src/StartUp/Main.cpp.obj: ../src/StartUp/Main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\909845\CLionProjects\G711Codec\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/G711Codec.dir/src/StartUp/Main.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\G711Codec.dir\src\StartUp\Main.cpp.obj -c C:\Users\909845\CLionProjects\G711Codec\src\StartUp\Main.cpp

CMakeFiles/G711Codec.dir/src/StartUp/Main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/G711Codec.dir/src/StartUp/Main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\909845\CLionProjects\G711Codec\src\StartUp\Main.cpp > CMakeFiles\G711Codec.dir\src\StartUp\Main.cpp.i

CMakeFiles/G711Codec.dir/src/StartUp/Main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/G711Codec.dir/src/StartUp/Main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\909845\CLionProjects\G711Codec\src\StartUp\Main.cpp -o CMakeFiles\G711Codec.dir\src\StartUp\Main.cpp.s

CMakeFiles/G711Codec.dir/src/StartUp/Main.cpp.obj.requires:

.PHONY : CMakeFiles/G711Codec.dir/src/StartUp/Main.cpp.obj.requires

CMakeFiles/G711Codec.dir/src/StartUp/Main.cpp.obj.provides: CMakeFiles/G711Codec.dir/src/StartUp/Main.cpp.obj.requires
	$(MAKE) -f CMakeFiles\G711Codec.dir\build.make CMakeFiles/G711Codec.dir/src/StartUp/Main.cpp.obj.provides.build
.PHONY : CMakeFiles/G711Codec.dir/src/StartUp/Main.cpp.obj.provides

CMakeFiles/G711Codec.dir/src/StartUp/Main.cpp.obj.provides.build: CMakeFiles/G711Codec.dir/src/StartUp/Main.cpp.obj


CMakeFiles/G711Codec.dir/src/Codec/G711Decode.cpp.obj: CMakeFiles/G711Codec.dir/flags.make
CMakeFiles/G711Codec.dir/src/Codec/G711Decode.cpp.obj: ../src/Codec/G711Decode.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\909845\CLionProjects\G711Codec\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/G711Codec.dir/src/Codec/G711Decode.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\G711Codec.dir\src\Codec\G711Decode.cpp.obj -c C:\Users\909845\CLionProjects\G711Codec\src\Codec\G711Decode.cpp

CMakeFiles/G711Codec.dir/src/Codec/G711Decode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/G711Codec.dir/src/Codec/G711Decode.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\909845\CLionProjects\G711Codec\src\Codec\G711Decode.cpp > CMakeFiles\G711Codec.dir\src\Codec\G711Decode.cpp.i

CMakeFiles/G711Codec.dir/src/Codec/G711Decode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/G711Codec.dir/src/Codec/G711Decode.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\909845\CLionProjects\G711Codec\src\Codec\G711Decode.cpp -o CMakeFiles\G711Codec.dir\src\Codec\G711Decode.cpp.s

CMakeFiles/G711Codec.dir/src/Codec/G711Decode.cpp.obj.requires:

.PHONY : CMakeFiles/G711Codec.dir/src/Codec/G711Decode.cpp.obj.requires

CMakeFiles/G711Codec.dir/src/Codec/G711Decode.cpp.obj.provides: CMakeFiles/G711Codec.dir/src/Codec/G711Decode.cpp.obj.requires
	$(MAKE) -f CMakeFiles\G711Codec.dir\build.make CMakeFiles/G711Codec.dir/src/Codec/G711Decode.cpp.obj.provides.build
.PHONY : CMakeFiles/G711Codec.dir/src/Codec/G711Decode.cpp.obj.provides

CMakeFiles/G711Codec.dir/src/Codec/G711Decode.cpp.obj.provides.build: CMakeFiles/G711Codec.dir/src/Codec/G711Decode.cpp.obj


CMakeFiles/G711Codec.dir/src/Codec/G711Encode.cpp.obj: CMakeFiles/G711Codec.dir/flags.make
CMakeFiles/G711Codec.dir/src/Codec/G711Encode.cpp.obj: ../src/Codec/G711Encode.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\909845\CLionProjects\G711Codec\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/G711Codec.dir/src/Codec/G711Encode.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\G711Codec.dir\src\Codec\G711Encode.cpp.obj -c C:\Users\909845\CLionProjects\G711Codec\src\Codec\G711Encode.cpp

CMakeFiles/G711Codec.dir/src/Codec/G711Encode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/G711Codec.dir/src/Codec/G711Encode.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\909845\CLionProjects\G711Codec\src\Codec\G711Encode.cpp > CMakeFiles\G711Codec.dir\src\Codec\G711Encode.cpp.i

CMakeFiles/G711Codec.dir/src/Codec/G711Encode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/G711Codec.dir/src/Codec/G711Encode.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\909845\CLionProjects\G711Codec\src\Codec\G711Encode.cpp -o CMakeFiles\G711Codec.dir\src\Codec\G711Encode.cpp.s

CMakeFiles/G711Codec.dir/src/Codec/G711Encode.cpp.obj.requires:

.PHONY : CMakeFiles/G711Codec.dir/src/Codec/G711Encode.cpp.obj.requires

CMakeFiles/G711Codec.dir/src/Codec/G711Encode.cpp.obj.provides: CMakeFiles/G711Codec.dir/src/Codec/G711Encode.cpp.obj.requires
	$(MAKE) -f CMakeFiles\G711Codec.dir\build.make CMakeFiles/G711Codec.dir/src/Codec/G711Encode.cpp.obj.provides.build
.PHONY : CMakeFiles/G711Codec.dir/src/Codec/G711Encode.cpp.obj.provides

CMakeFiles/G711Codec.dir/src/Codec/G711Encode.cpp.obj.provides.build: CMakeFiles/G711Codec.dir/src/Codec/G711Encode.cpp.obj


CMakeFiles/G711Codec.dir/src/Codec/G711/g711.c.obj: CMakeFiles/G711Codec.dir/flags.make
CMakeFiles/G711Codec.dir/src/Codec/G711/g711.c.obj: ../src/Codec/G711/g711.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\909845\CLionProjects\G711Codec\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/G711Codec.dir/src/Codec/G711/g711.c.obj"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\G711Codec.dir\src\Codec\G711\g711.c.obj   -c C:\Users\909845\CLionProjects\G711Codec\src\Codec\G711\g711.c

CMakeFiles/G711Codec.dir/src/Codec/G711/g711.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/G711Codec.dir/src/Codec/G711/g711.c.i"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\909845\CLionProjects\G711Codec\src\Codec\G711\g711.c > CMakeFiles\G711Codec.dir\src\Codec\G711\g711.c.i

CMakeFiles/G711Codec.dir/src/Codec/G711/g711.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/G711Codec.dir/src/Codec/G711/g711.c.s"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\909845\CLionProjects\G711Codec\src\Codec\G711\g711.c -o CMakeFiles\G711Codec.dir\src\Codec\G711\g711.c.s

CMakeFiles/G711Codec.dir/src/Codec/G711/g711.c.obj.requires:

.PHONY : CMakeFiles/G711Codec.dir/src/Codec/G711/g711.c.obj.requires

CMakeFiles/G711Codec.dir/src/Codec/G711/g711.c.obj.provides: CMakeFiles/G711Codec.dir/src/Codec/G711/g711.c.obj.requires
	$(MAKE) -f CMakeFiles\G711Codec.dir\build.make CMakeFiles/G711Codec.dir/src/Codec/G711/g711.c.obj.provides.build
.PHONY : CMakeFiles/G711Codec.dir/src/Codec/G711/g711.c.obj.provides

CMakeFiles/G711Codec.dir/src/Codec/G711/g711.c.obj.provides.build: CMakeFiles/G711Codec.dir/src/Codec/G711/g711.c.obj


# Object files for target G711Codec
G711Codec_OBJECTS = \
"CMakeFiles/G711Codec.dir/src/StartUp/Main.cpp.obj" \
"CMakeFiles/G711Codec.dir/src/Codec/G711Decode.cpp.obj" \
"CMakeFiles/G711Codec.dir/src/Codec/G711Encode.cpp.obj" \
"CMakeFiles/G711Codec.dir/src/Codec/G711/g711.c.obj"

# External object files for target G711Codec
G711Codec_EXTERNAL_OBJECTS =

G711Codec.exe: CMakeFiles/G711Codec.dir/src/StartUp/Main.cpp.obj
G711Codec.exe: CMakeFiles/G711Codec.dir/src/Codec/G711Decode.cpp.obj
G711Codec.exe: CMakeFiles/G711Codec.dir/src/Codec/G711Encode.cpp.obj
G711Codec.exe: CMakeFiles/G711Codec.dir/src/Codec/G711/g711.c.obj
G711Codec.exe: CMakeFiles/G711Codec.dir/build.make
G711Codec.exe: CMakeFiles/G711Codec.dir/linklibs.rsp
G711Codec.exe: CMakeFiles/G711Codec.dir/objects1.rsp
G711Codec.exe: CMakeFiles/G711Codec.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\909845\CLionProjects\G711Codec\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable G711Codec.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\G711Codec.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/G711Codec.dir/build: G711Codec.exe

.PHONY : CMakeFiles/G711Codec.dir/build

CMakeFiles/G711Codec.dir/requires: CMakeFiles/G711Codec.dir/src/StartUp/Main.cpp.obj.requires
CMakeFiles/G711Codec.dir/requires: CMakeFiles/G711Codec.dir/src/Codec/G711Decode.cpp.obj.requires
CMakeFiles/G711Codec.dir/requires: CMakeFiles/G711Codec.dir/src/Codec/G711Encode.cpp.obj.requires
CMakeFiles/G711Codec.dir/requires: CMakeFiles/G711Codec.dir/src/Codec/G711/g711.c.obj.requires

.PHONY : CMakeFiles/G711Codec.dir/requires

CMakeFiles/G711Codec.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\G711Codec.dir\cmake_clean.cmake
.PHONY : CMakeFiles/G711Codec.dir/clean

CMakeFiles/G711Codec.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\909845\CLionProjects\G711Codec C:\Users\909845\CLionProjects\G711Codec C:\Users\909845\CLionProjects\G711Codec\cmake-build-debug C:\Users\909845\CLionProjects\G711Codec\cmake-build-debug C:\Users\909845\CLionProjects\G711Codec\cmake-build-debug\CMakeFiles\G711Codec.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/G711Codec.dir/depend
