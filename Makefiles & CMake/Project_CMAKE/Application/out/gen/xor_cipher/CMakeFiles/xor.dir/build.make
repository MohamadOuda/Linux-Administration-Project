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
CMAKE_SOURCE_DIR = /home/mint/Desktop/LinuxAdminProj-MohamedOuda/Part2/ProjectCMAKE/Application

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mint/Desktop/LinuxAdminProj-MohamedOuda/Part2/ProjectCMAKE/Application

# Include any dependencies generated for this target.
include out/gen/xor_cipher/CMakeFiles/xor.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include out/gen/xor_cipher/CMakeFiles/xor.dir/compiler_depend.make

# Include the progress variables for this target.
include out/gen/xor_cipher/CMakeFiles/xor.dir/progress.make

# Include the compile flags for this target's objects.
include out/gen/xor_cipher/CMakeFiles/xor.dir/flags.make

out/gen/xor_cipher/CMakeFiles/xor.dir/src/xor_encrypt.c.o: out/gen/xor_cipher/CMakeFiles/xor.dir/flags.make
out/gen/xor_cipher/CMakeFiles/xor.dir/src/xor_encrypt.c.o: /home/mint/Desktop/LinuxAdminProj-MohamedOuda/Part2/ProjectCMAKE/Modules/xor_cipher/src/xor_encrypt.c
out/gen/xor_cipher/CMakeFiles/xor.dir/src/xor_encrypt.c.o: out/gen/xor_cipher/CMakeFiles/xor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mint/Desktop/LinuxAdminProj-MohamedOuda/Part2/ProjectCMAKE/Application/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object out/gen/xor_cipher/CMakeFiles/xor.dir/src/xor_encrypt.c.o"
	cd /home/mint/Desktop/LinuxAdminProj-MohamedOuda/Part2/ProjectCMAKE/Application/out/gen/xor_cipher && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT out/gen/xor_cipher/CMakeFiles/xor.dir/src/xor_encrypt.c.o -MF CMakeFiles/xor.dir/src/xor_encrypt.c.o.d -o CMakeFiles/xor.dir/src/xor_encrypt.c.o -c /home/mint/Desktop/LinuxAdminProj-MohamedOuda/Part2/ProjectCMAKE/Modules/xor_cipher/src/xor_encrypt.c

out/gen/xor_cipher/CMakeFiles/xor.dir/src/xor_encrypt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/xor.dir/src/xor_encrypt.c.i"
	cd /home/mint/Desktop/LinuxAdminProj-MohamedOuda/Part2/ProjectCMAKE/Application/out/gen/xor_cipher && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mint/Desktop/LinuxAdminProj-MohamedOuda/Part2/ProjectCMAKE/Modules/xor_cipher/src/xor_encrypt.c > CMakeFiles/xor.dir/src/xor_encrypt.c.i

out/gen/xor_cipher/CMakeFiles/xor.dir/src/xor_encrypt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/xor.dir/src/xor_encrypt.c.s"
	cd /home/mint/Desktop/LinuxAdminProj-MohamedOuda/Part2/ProjectCMAKE/Application/out/gen/xor_cipher && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mint/Desktop/LinuxAdminProj-MohamedOuda/Part2/ProjectCMAKE/Modules/xor_cipher/src/xor_encrypt.c -o CMakeFiles/xor.dir/src/xor_encrypt.c.s

out/gen/xor_cipher/CMakeFiles/xor.dir/src/xor_decrypt.c.o: out/gen/xor_cipher/CMakeFiles/xor.dir/flags.make
out/gen/xor_cipher/CMakeFiles/xor.dir/src/xor_decrypt.c.o: /home/mint/Desktop/LinuxAdminProj-MohamedOuda/Part2/ProjectCMAKE/Modules/xor_cipher/src/xor_decrypt.c
out/gen/xor_cipher/CMakeFiles/xor.dir/src/xor_decrypt.c.o: out/gen/xor_cipher/CMakeFiles/xor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mint/Desktop/LinuxAdminProj-MohamedOuda/Part2/ProjectCMAKE/Application/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object out/gen/xor_cipher/CMakeFiles/xor.dir/src/xor_decrypt.c.o"
	cd /home/mint/Desktop/LinuxAdminProj-MohamedOuda/Part2/ProjectCMAKE/Application/out/gen/xor_cipher && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT out/gen/xor_cipher/CMakeFiles/xor.dir/src/xor_decrypt.c.o -MF CMakeFiles/xor.dir/src/xor_decrypt.c.o.d -o CMakeFiles/xor.dir/src/xor_decrypt.c.o -c /home/mint/Desktop/LinuxAdminProj-MohamedOuda/Part2/ProjectCMAKE/Modules/xor_cipher/src/xor_decrypt.c

out/gen/xor_cipher/CMakeFiles/xor.dir/src/xor_decrypt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/xor.dir/src/xor_decrypt.c.i"
	cd /home/mint/Desktop/LinuxAdminProj-MohamedOuda/Part2/ProjectCMAKE/Application/out/gen/xor_cipher && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mint/Desktop/LinuxAdminProj-MohamedOuda/Part2/ProjectCMAKE/Modules/xor_cipher/src/xor_decrypt.c > CMakeFiles/xor.dir/src/xor_decrypt.c.i

out/gen/xor_cipher/CMakeFiles/xor.dir/src/xor_decrypt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/xor.dir/src/xor_decrypt.c.s"
	cd /home/mint/Desktop/LinuxAdminProj-MohamedOuda/Part2/ProjectCMAKE/Application/out/gen/xor_cipher && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mint/Desktop/LinuxAdminProj-MohamedOuda/Part2/ProjectCMAKE/Modules/xor_cipher/src/xor_decrypt.c -o CMakeFiles/xor.dir/src/xor_decrypt.c.s

# Object files for target xor
xor_OBJECTS = \
"CMakeFiles/xor.dir/src/xor_encrypt.c.o" \
"CMakeFiles/xor.dir/src/xor_decrypt.c.o"

# External object files for target xor
xor_EXTERNAL_OBJECTS =

out/lib/libxor.so: out/gen/xor_cipher/CMakeFiles/xor.dir/src/xor_encrypt.c.o
out/lib/libxor.so: out/gen/xor_cipher/CMakeFiles/xor.dir/src/xor_decrypt.c.o
out/lib/libxor.so: out/gen/xor_cipher/CMakeFiles/xor.dir/build.make
out/lib/libxor.so: out/gen/xor_cipher/CMakeFiles/xor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mint/Desktop/LinuxAdminProj-MohamedOuda/Part2/ProjectCMAKE/Application/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C shared library ../../lib/libxor.so"
	cd /home/mint/Desktop/LinuxAdminProj-MohamedOuda/Part2/ProjectCMAKE/Application/out/gen/xor_cipher && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/xor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
out/gen/xor_cipher/CMakeFiles/xor.dir/build: out/lib/libxor.so
.PHONY : out/gen/xor_cipher/CMakeFiles/xor.dir/build

out/gen/xor_cipher/CMakeFiles/xor.dir/clean:
	cd /home/mint/Desktop/LinuxAdminProj-MohamedOuda/Part2/ProjectCMAKE/Application/out/gen/xor_cipher && $(CMAKE_COMMAND) -P CMakeFiles/xor.dir/cmake_clean.cmake
.PHONY : out/gen/xor_cipher/CMakeFiles/xor.dir/clean

out/gen/xor_cipher/CMakeFiles/xor.dir/depend:
	cd /home/mint/Desktop/LinuxAdminProj-MohamedOuda/Part2/ProjectCMAKE/Application && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mint/Desktop/LinuxAdminProj-MohamedOuda/Part2/ProjectCMAKE/Application /home/mint/Desktop/LinuxAdminProj-MohamedOuda/Part2/ProjectCMAKE/Modules/xor_cipher /home/mint/Desktop/LinuxAdminProj-MohamedOuda/Part2/ProjectCMAKE/Application /home/mint/Desktop/LinuxAdminProj-MohamedOuda/Part2/ProjectCMAKE/Application/out/gen/xor_cipher /home/mint/Desktop/LinuxAdminProj-MohamedOuda/Part2/ProjectCMAKE/Application/out/gen/xor_cipher/CMakeFiles/xor.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : out/gen/xor_cipher/CMakeFiles/xor.dir/depend

