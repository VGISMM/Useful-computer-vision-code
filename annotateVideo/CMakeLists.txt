cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
project(MY_GRAND_PROJECT)
find_package( OpenCV REQUIRED )

# use sse3 instruction set
SET(CMAKE_CXX_FLAGS "-msse3")
include_directories(${GTK3_INCLUDE_DIRS})
link_directories(${GTK3_LIBRARY_DIRS})
# Add other flags to the compiler
add_definitions(${GTK3_CFLAGS_OTHER})

add_executable(annotateVideo annotateVideo.cpp)
target_link_libraries(annotateVideo ${OpenCV_LIBS})

ADD_DEFINITIONS(
    -std=c++11 # Or -std=c++0x
    # Other flags
)