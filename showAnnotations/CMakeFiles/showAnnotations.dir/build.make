# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.1

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.1.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.1.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/Morten/Documents/Aalborg University/P10 - Long Master Thesis/code/frameAnnotatorNowTrafficlightCropper/showAnnotations"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/Morten/Documents/Aalborg University/P10 - Long Master Thesis/code/frameAnnotatorNowTrafficlightCropper/showAnnotations"

# Include any dependencies generated for this target.
include CMakeFiles/showAnnotations.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/showAnnotations.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/showAnnotations.dir/flags.make

CMakeFiles/showAnnotations.dir/showAnnotations.cpp.o: CMakeFiles/showAnnotations.dir/flags.make
CMakeFiles/showAnnotations.dir/showAnnotations.cpp.o: showAnnotations.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/Users/Morten/Documents/Aalborg University/P10 - Long Master Thesis/code/frameAnnotatorNowTrafficlightCropper/showAnnotations/CMakeFiles" $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/showAnnotations.dir/showAnnotations.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/showAnnotations.dir/showAnnotations.cpp.o -c "/Users/Morten/Documents/Aalborg University/P10 - Long Master Thesis/code/frameAnnotatorNowTrafficlightCropper/showAnnotations/showAnnotations.cpp"

CMakeFiles/showAnnotations.dir/showAnnotations.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/showAnnotations.dir/showAnnotations.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/Users/Morten/Documents/Aalborg University/P10 - Long Master Thesis/code/frameAnnotatorNowTrafficlightCropper/showAnnotations/showAnnotations.cpp" > CMakeFiles/showAnnotations.dir/showAnnotations.cpp.i

CMakeFiles/showAnnotations.dir/showAnnotations.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/showAnnotations.dir/showAnnotations.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/Users/Morten/Documents/Aalborg University/P10 - Long Master Thesis/code/frameAnnotatorNowTrafficlightCropper/showAnnotations/showAnnotations.cpp" -o CMakeFiles/showAnnotations.dir/showAnnotations.cpp.s

CMakeFiles/showAnnotations.dir/showAnnotations.cpp.o.requires:
.PHONY : CMakeFiles/showAnnotations.dir/showAnnotations.cpp.o.requires

CMakeFiles/showAnnotations.dir/showAnnotations.cpp.o.provides: CMakeFiles/showAnnotations.dir/showAnnotations.cpp.o.requires
	$(MAKE) -f CMakeFiles/showAnnotations.dir/build.make CMakeFiles/showAnnotations.dir/showAnnotations.cpp.o.provides.build
.PHONY : CMakeFiles/showAnnotations.dir/showAnnotations.cpp.o.provides

CMakeFiles/showAnnotations.dir/showAnnotations.cpp.o.provides.build: CMakeFiles/showAnnotations.dir/showAnnotations.cpp.o

# Object files for target showAnnotations
showAnnotations_OBJECTS = \
"CMakeFiles/showAnnotations.dir/showAnnotations.cpp.o"

# External object files for target showAnnotations
showAnnotations_EXTERNAL_OBJECTS =

showAnnotations: CMakeFiles/showAnnotations.dir/showAnnotations.cpp.o
showAnnotations: CMakeFiles/showAnnotations.dir/build.make
showAnnotations: /usr/local/lib/libopencv_viz.2.4.10.dylib
showAnnotations: /usr/local/lib/libopencv_videostab.2.4.10.dylib
showAnnotations: /usr/local/lib/libopencv_ts.a
showAnnotations: /usr/local/lib/libopencv_superres.2.4.10.dylib
showAnnotations: /usr/local/lib/libopencv_stitching.2.4.10.dylib
showAnnotations: /usr/local/lib/libopencv_contrib.2.4.10.dylib
showAnnotations: /usr/local/lib/libopencv_nonfree.2.4.10.dylib
showAnnotations: /usr/local/lib/libopencv_ocl.2.4.10.dylib
showAnnotations: /usr/local/lib/libopencv_gpu.2.4.10.dylib
showAnnotations: /usr/local/lib/libopencv_photo.2.4.10.dylib
showAnnotations: /usr/local/lib/libopencv_objdetect.2.4.10.dylib
showAnnotations: /usr/local/lib/libopencv_legacy.2.4.10.dylib
showAnnotations: /usr/local/lib/libopencv_video.2.4.10.dylib
showAnnotations: /usr/local/lib/libopencv_ml.2.4.10.dylib
showAnnotations: /usr/local/lib/libopencv_calib3d.2.4.10.dylib
showAnnotations: /usr/local/lib/libopencv_features2d.2.4.10.dylib
showAnnotations: /usr/local/lib/libopencv_highgui.2.4.10.dylib
showAnnotations: /usr/local/lib/libopencv_imgproc.2.4.10.dylib
showAnnotations: /usr/local/lib/libopencv_flann.2.4.10.dylib
showAnnotations: /usr/local/lib/libopencv_core.2.4.10.dylib
showAnnotations: CMakeFiles/showAnnotations.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable showAnnotations"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/showAnnotations.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/showAnnotations.dir/build: showAnnotations
.PHONY : CMakeFiles/showAnnotations.dir/build

CMakeFiles/showAnnotations.dir/requires: CMakeFiles/showAnnotations.dir/showAnnotations.cpp.o.requires
.PHONY : CMakeFiles/showAnnotations.dir/requires

CMakeFiles/showAnnotations.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/showAnnotations.dir/cmake_clean.cmake
.PHONY : CMakeFiles/showAnnotations.dir/clean

CMakeFiles/showAnnotations.dir/depend:
	cd "/Users/Morten/Documents/Aalborg University/P10 - Long Master Thesis/code/frameAnnotatorNowTrafficlightCropper/showAnnotations" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/Morten/Documents/Aalborg University/P10 - Long Master Thesis/code/frameAnnotatorNowTrafficlightCropper/showAnnotations" "/Users/Morten/Documents/Aalborg University/P10 - Long Master Thesis/code/frameAnnotatorNowTrafficlightCropper/showAnnotations" "/Users/Morten/Documents/Aalborg University/P10 - Long Master Thesis/code/frameAnnotatorNowTrafficlightCropper/showAnnotations" "/Users/Morten/Documents/Aalborg University/P10 - Long Master Thesis/code/frameAnnotatorNowTrafficlightCropper/showAnnotations" "/Users/Morten/Documents/Aalborg University/P10 - Long Master Thesis/code/frameAnnotatorNowTrafficlightCropper/showAnnotations/CMakeFiles/showAnnotations.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/showAnnotations.dir/depend

