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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.1.0/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.1.0/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
<<<<<<< HEAD
CMAKE_SOURCE_DIR = /Users/markpp/Desktop/mark/Useful-computer-vision-code/annotateVideo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/markpp/Desktop/mark/Useful-computer-vision-code/annotateVideo
=======
CMAKE_SOURCE_DIR = /Users/Morten/Documents/GitHub/Useful-computer-vision-code/annotateVideo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/Morten/Documents/GitHub/Useful-computer-vision-code/annotateVideo
>>>>>>> newFunctions

# Include any dependencies generated for this target.
include CMakeFiles/annotateVideo.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/annotateVideo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/annotateVideo.dir/flags.make

CMakeFiles/annotateVideo.dir/annotateVideo.cpp.o: CMakeFiles/annotateVideo.dir/flags.make
CMakeFiles/annotateVideo.dir/annotateVideo.cpp.o: annotateVideo.cpp
<<<<<<< HEAD
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/markpp/Desktop/mark/Useful-computer-vision-code/annotateVideo/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/annotateVideo.dir/annotateVideo.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/annotateVideo.dir/annotateVideo.cpp.o -c /Users/markpp/Desktop/mark/Useful-computer-vision-code/annotateVideo/annotateVideo.cpp

CMakeFiles/annotateVideo.dir/annotateVideo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/annotateVideo.dir/annotateVideo.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/markpp/Desktop/mark/Useful-computer-vision-code/annotateVideo/annotateVideo.cpp > CMakeFiles/annotateVideo.dir/annotateVideo.cpp.i

CMakeFiles/annotateVideo.dir/annotateVideo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/annotateVideo.dir/annotateVideo.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/markpp/Desktop/mark/Useful-computer-vision-code/annotateVideo/annotateVideo.cpp -o CMakeFiles/annotateVideo.dir/annotateVideo.cpp.s
=======
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/Morten/Documents/GitHub/Useful-computer-vision-code/annotateVideo/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/annotateVideo.dir/annotateVideo.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/annotateVideo.dir/annotateVideo.cpp.o -c /Users/Morten/Documents/GitHub/Useful-computer-vision-code/annotateVideo/annotateVideo.cpp

CMakeFiles/annotateVideo.dir/annotateVideo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/annotateVideo.dir/annotateVideo.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/Morten/Documents/GitHub/Useful-computer-vision-code/annotateVideo/annotateVideo.cpp > CMakeFiles/annotateVideo.dir/annotateVideo.cpp.i

CMakeFiles/annotateVideo.dir/annotateVideo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/annotateVideo.dir/annotateVideo.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/Morten/Documents/GitHub/Useful-computer-vision-code/annotateVideo/annotateVideo.cpp -o CMakeFiles/annotateVideo.dir/annotateVideo.cpp.s
>>>>>>> newFunctions

CMakeFiles/annotateVideo.dir/annotateVideo.cpp.o.requires:
.PHONY : CMakeFiles/annotateVideo.dir/annotateVideo.cpp.o.requires

CMakeFiles/annotateVideo.dir/annotateVideo.cpp.o.provides: CMakeFiles/annotateVideo.dir/annotateVideo.cpp.o.requires
	$(MAKE) -f CMakeFiles/annotateVideo.dir/build.make CMakeFiles/annotateVideo.dir/annotateVideo.cpp.o.provides.build
.PHONY : CMakeFiles/annotateVideo.dir/annotateVideo.cpp.o.provides

CMakeFiles/annotateVideo.dir/annotateVideo.cpp.o.provides.build: CMakeFiles/annotateVideo.dir/annotateVideo.cpp.o

# Object files for target annotateVideo
annotateVideo_OBJECTS = \
"CMakeFiles/annotateVideo.dir/annotateVideo.cpp.o"

# External object files for target annotateVideo
annotateVideo_EXTERNAL_OBJECTS =

annotateVideo: CMakeFiles/annotateVideo.dir/annotateVideo.cpp.o
annotateVideo: CMakeFiles/annotateVideo.dir/build.make
annotateVideo: /usr/local/lib/libopencv_viz.2.4.10.dylib
annotateVideo: /usr/local/lib/libopencv_videostab.2.4.10.dylib
annotateVideo: /usr/local/lib/libopencv_ts.a
annotateVideo: /usr/local/lib/libopencv_superres.2.4.10.dylib
annotateVideo: /usr/local/lib/libopencv_stitching.2.4.10.dylib
annotateVideo: /usr/local/lib/libopencv_contrib.2.4.10.dylib
annotateVideo: /usr/local/lib/libopencv_nonfree.2.4.10.dylib
annotateVideo: /usr/local/lib/libopencv_ocl.2.4.10.dylib
annotateVideo: /usr/local/lib/libopencv_gpu.2.4.10.dylib
annotateVideo: /usr/local/lib/libopencv_photo.2.4.10.dylib
annotateVideo: /usr/local/lib/libopencv_objdetect.2.4.10.dylib
annotateVideo: /usr/local/lib/libopencv_legacy.2.4.10.dylib
annotateVideo: /usr/local/lib/libopencv_video.2.4.10.dylib
annotateVideo: /usr/local/lib/libopencv_ml.2.4.10.dylib
annotateVideo: /usr/local/lib/libopencv_calib3d.2.4.10.dylib
annotateVideo: /usr/local/lib/libopencv_features2d.2.4.10.dylib
annotateVideo: /usr/local/lib/libopencv_highgui.2.4.10.dylib
annotateVideo: /usr/local/lib/libopencv_imgproc.2.4.10.dylib
annotateVideo: /usr/local/lib/libopencv_flann.2.4.10.dylib
annotateVideo: /usr/local/lib/libopencv_core.2.4.10.dylib
annotateVideo: CMakeFiles/annotateVideo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable annotateVideo"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/annotateVideo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/annotateVideo.dir/build: annotateVideo
.PHONY : CMakeFiles/annotateVideo.dir/build

CMakeFiles/annotateVideo.dir/requires: CMakeFiles/annotateVideo.dir/annotateVideo.cpp.o.requires
.PHONY : CMakeFiles/annotateVideo.dir/requires

CMakeFiles/annotateVideo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/annotateVideo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/annotateVideo.dir/clean

CMakeFiles/annotateVideo.dir/depend:
<<<<<<< HEAD
	cd /Users/markpp/Desktop/mark/Useful-computer-vision-code/annotateVideo && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/markpp/Desktop/mark/Useful-computer-vision-code/annotateVideo /Users/markpp/Desktop/mark/Useful-computer-vision-code/annotateVideo /Users/markpp/Desktop/mark/Useful-computer-vision-code/annotateVideo /Users/markpp/Desktop/mark/Useful-computer-vision-code/annotateVideo /Users/markpp/Desktop/mark/Useful-computer-vision-code/annotateVideo/CMakeFiles/annotateVideo.dir/DependInfo.cmake --color=$(COLOR)
=======
	cd /Users/Morten/Documents/GitHub/Useful-computer-vision-code/annotateVideo && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Morten/Documents/GitHub/Useful-computer-vision-code/annotateVideo /Users/Morten/Documents/GitHub/Useful-computer-vision-code/annotateVideo /Users/Morten/Documents/GitHub/Useful-computer-vision-code/annotateVideo /Users/Morten/Documents/GitHub/Useful-computer-vision-code/annotateVideo /Users/Morten/Documents/GitHub/Useful-computer-vision-code/annotateVideo/CMakeFiles/annotateVideo.dir/DependInfo.cmake --color=$(COLOR)
>>>>>>> newFunctions
.PHONY : CMakeFiles/annotateVideo.dir/depend

