<<<<<<< HEAD
# Install script for directory: /Users/markpp/Desktop/mark/Useful-computer-vision-code/annotateVideo
=======
# Install script for directory: /Users/Morten/Documents/GitHub/Useful-computer-vision-code/annotateVideo
>>>>>>> newFunctions

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

<<<<<<< HEAD
file(WRITE "/Users/markpp/Desktop/mark/Useful-computer-vision-code/annotateVideo/${CMAKE_INSTALL_MANIFEST}" "")
foreach(file ${CMAKE_INSTALL_MANIFEST_FILES})
  file(APPEND "/Users/markpp/Desktop/mark/Useful-computer-vision-code/annotateVideo/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
=======
file(WRITE "/Users/Morten/Documents/GitHub/Useful-computer-vision-code/annotateVideo/${CMAKE_INSTALL_MANIFEST}" "")
foreach(file ${CMAKE_INSTALL_MANIFEST_FILES})
  file(APPEND "/Users/Morten/Documents/GitHub/Useful-computer-vision-code/annotateVideo/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
>>>>>>> newFunctions
endforeach()
