# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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
CMAKE_SOURCE_DIR = "/home/kenny/OpenCV subprograms/skew_correction"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/kenny/OpenCV subprograms/skew_correction"

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start "/home/kenny/OpenCV subprograms/skew_correction/CMakeFiles" "/home/kenny/OpenCV subprograms/skew_correction/CMakeFiles/progress.marks"
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start "/home/kenny/OpenCV subprograms/skew_correction/CMakeFiles" 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named skew_correction

# Build rule for target.
skew_correction: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 skew_correction
.PHONY : skew_correction

# fast build rule for target.
skew_correction/fast:
	$(MAKE) -f CMakeFiles/skew_correction.dir/build.make CMakeFiles/skew_correction.dir/build
.PHONY : skew_correction/fast

source/ccl.o: source/ccl.cpp.o

.PHONY : source/ccl.o

# target to build an object file
source/ccl.cpp.o:
	$(MAKE) -f CMakeFiles/skew_correction.dir/build.make CMakeFiles/skew_correction.dir/source/ccl.cpp.o
.PHONY : source/ccl.cpp.o

source/ccl.i: source/ccl.cpp.i

.PHONY : source/ccl.i

# target to preprocess a source file
source/ccl.cpp.i:
	$(MAKE) -f CMakeFiles/skew_correction.dir/build.make CMakeFiles/skew_correction.dir/source/ccl.cpp.i
.PHONY : source/ccl.cpp.i

source/ccl.s: source/ccl.cpp.s

.PHONY : source/ccl.s

# target to generate assembly for a file
source/ccl.cpp.s:
	$(MAKE) -f CMakeFiles/skew_correction.dir/build.make CMakeFiles/skew_correction.dir/source/ccl.cpp.s
.PHONY : source/ccl.cpp.s

source/main.o: source/main.cpp.o

.PHONY : source/main.o

# target to build an object file
source/main.cpp.o:
	$(MAKE) -f CMakeFiles/skew_correction.dir/build.make CMakeFiles/skew_correction.dir/source/main.cpp.o
.PHONY : source/main.cpp.o

source/main.i: source/main.cpp.i

.PHONY : source/main.i

# target to preprocess a source file
source/main.cpp.i:
	$(MAKE) -f CMakeFiles/skew_correction.dir/build.make CMakeFiles/skew_correction.dir/source/main.cpp.i
.PHONY : source/main.cpp.i

source/main.s: source/main.cpp.s

.PHONY : source/main.s

# target to generate assembly for a file
source/main.cpp.s:
	$(MAKE) -f CMakeFiles/skew_correction.dir/build.make CMakeFiles/skew_correction.dir/source/main.cpp.s
.PHONY : source/main.cpp.s

source/projection.o: source/projection.cpp.o

.PHONY : source/projection.o

# target to build an object file
source/projection.cpp.o:
	$(MAKE) -f CMakeFiles/skew_correction.dir/build.make CMakeFiles/skew_correction.dir/source/projection.cpp.o
.PHONY : source/projection.cpp.o

source/projection.i: source/projection.cpp.i

.PHONY : source/projection.i

# target to preprocess a source file
source/projection.cpp.i:
	$(MAKE) -f CMakeFiles/skew_correction.dir/build.make CMakeFiles/skew_correction.dir/source/projection.cpp.i
.PHONY : source/projection.cpp.i

source/projection.s: source/projection.cpp.s

.PHONY : source/projection.s

# target to generate assembly for a file
source/projection.cpp.s:
	$(MAKE) -f CMakeFiles/skew_correction.dir/build.make CMakeFiles/skew_correction.dir/source/projection.cpp.s
.PHONY : source/projection.cpp.s

source/rotation.o: source/rotation.cpp.o

.PHONY : source/rotation.o

# target to build an object file
source/rotation.cpp.o:
	$(MAKE) -f CMakeFiles/skew_correction.dir/build.make CMakeFiles/skew_correction.dir/source/rotation.cpp.o
.PHONY : source/rotation.cpp.o

source/rotation.i: source/rotation.cpp.i

.PHONY : source/rotation.i

# target to preprocess a source file
source/rotation.cpp.i:
	$(MAKE) -f CMakeFiles/skew_correction.dir/build.make CMakeFiles/skew_correction.dir/source/rotation.cpp.i
.PHONY : source/rotation.cpp.i

source/rotation.s: source/rotation.cpp.s

.PHONY : source/rotation.s

# target to generate assembly for a file
source/rotation.cpp.s:
	$(MAKE) -f CMakeFiles/skew_correction.dir/build.make CMakeFiles/skew_correction.dir/source/rotation.cpp.s
.PHONY : source/rotation.cpp.s

source/skew.o: source/skew.cpp.o

.PHONY : source/skew.o

# target to build an object file
source/skew.cpp.o:
	$(MAKE) -f CMakeFiles/skew_correction.dir/build.make CMakeFiles/skew_correction.dir/source/skew.cpp.o
.PHONY : source/skew.cpp.o

source/skew.i: source/skew.cpp.i

.PHONY : source/skew.i

# target to preprocess a source file
source/skew.cpp.i:
	$(MAKE) -f CMakeFiles/skew_correction.dir/build.make CMakeFiles/skew_correction.dir/source/skew.cpp.i
.PHONY : source/skew.cpp.i

source/skew.s: source/skew.cpp.s

.PHONY : source/skew.s

# target to generate assembly for a file
source/skew.cpp.s:
	$(MAKE) -f CMakeFiles/skew_correction.dir/build.make CMakeFiles/skew_correction.dir/source/skew.cpp.s
.PHONY : source/skew.cpp.s

source/union.o: source/union.cpp.o

.PHONY : source/union.o

# target to build an object file
source/union.cpp.o:
	$(MAKE) -f CMakeFiles/skew_correction.dir/build.make CMakeFiles/skew_correction.dir/source/union.cpp.o
.PHONY : source/union.cpp.o

source/union.i: source/union.cpp.i

.PHONY : source/union.i

# target to preprocess a source file
source/union.cpp.i:
	$(MAKE) -f CMakeFiles/skew_correction.dir/build.make CMakeFiles/skew_correction.dir/source/union.cpp.i
.PHONY : source/union.cpp.i

source/union.s: source/union.cpp.s

.PHONY : source/union.s

# target to generate assembly for a file
source/union.cpp.s:
	$(MAKE) -f CMakeFiles/skew_correction.dir/build.make CMakeFiles/skew_correction.dir/source/union.cpp.s
.PHONY : source/union.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... skew_correction"
	@echo "... source/ccl.o"
	@echo "... source/ccl.i"
	@echo "... source/ccl.s"
	@echo "... source/main.o"
	@echo "... source/main.i"
	@echo "... source/main.s"
	@echo "... source/projection.o"
	@echo "... source/projection.i"
	@echo "... source/projection.s"
	@echo "... source/rotation.o"
	@echo "... source/rotation.i"
	@echo "... source/rotation.s"
	@echo "... source/skew.o"
	@echo "... source/skew.i"
	@echo "... source/skew.s"
	@echo "... source/union.o"
	@echo "... source/union.i"
	@echo "... source/union.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

