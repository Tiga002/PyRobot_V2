# Install script for directory: /home/developer/low_cost_ws/src/pyrobot/robots/LoCoBot/locobot_navigation/base_navigation

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/developer/low_cost_ws/install")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  include("/home/developer/low_cost_ws/build/pyrobot/robots/LoCoBot/locobot_navigation/base_navigation/catkin_generated/safe_execute_install.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/developer/low_cost_ws/build/pyrobot/robots/LoCoBot/locobot_navigation/base_navigation/catkin_generated/installspace/base_navigation.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/base_navigation/cmake" TYPE FILE FILES
    "/home/developer/low_cost_ws/build/pyrobot/robots/LoCoBot/locobot_navigation/base_navigation/catkin_generated/installspace/base_navigationConfig.cmake"
    "/home/developer/low_cost_ws/build/pyrobot/robots/LoCoBot/locobot_navigation/base_navigation/catkin_generated/installspace/base_navigationConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/base_navigation" TYPE FILE FILES "/home/developer/low_cost_ws/src/pyrobot/robots/LoCoBot/locobot_navigation/base_navigation/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/base_navigation" TYPE DIRECTORY FILES "/home/developer/low_cost_ws/src/pyrobot/robots/LoCoBot/locobot_navigation/base_navigation/include/base_navigation/")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/base_navigation" TYPE DIRECTORY FILES "/home/developer/low_cost_ws/src/pyrobot/robots/LoCoBot/locobot_navigation/base_navigation/launch")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/base_navigation" TYPE PROGRAM FILES "/home/developer/low_cost_ws/src/pyrobot/robots/LoCoBot/locobot_navigation/base_navigation/nodes/mapToGrid.py")
endif()

