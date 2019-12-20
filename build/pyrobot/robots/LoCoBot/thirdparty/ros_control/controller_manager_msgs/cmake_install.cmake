# Install script for directory: /home/developer/low_cost_ws/src/pyrobot/robots/LoCoBot/thirdparty/ros_control/controller_manager_msgs

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
  include("/home/developer/low_cost_ws/build/pyrobot/robots/LoCoBot/thirdparty/ros_control/controller_manager_msgs/catkin_generated/safe_execute_install.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/controller_manager_msgs/msg" TYPE FILE FILES
    "/home/developer/low_cost_ws/src/pyrobot/robots/LoCoBot/thirdparty/ros_control/controller_manager_msgs/msg/ControllerState.msg"
    "/home/developer/low_cost_ws/src/pyrobot/robots/LoCoBot/thirdparty/ros_control/controller_manager_msgs/msg/ControllerStatistics.msg"
    "/home/developer/low_cost_ws/src/pyrobot/robots/LoCoBot/thirdparty/ros_control/controller_manager_msgs/msg/ControllersStatistics.msg"
    "/home/developer/low_cost_ws/src/pyrobot/robots/LoCoBot/thirdparty/ros_control/controller_manager_msgs/msg/HardwareInterfaceResources.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/controller_manager_msgs/srv" TYPE FILE FILES
    "/home/developer/low_cost_ws/src/pyrobot/robots/LoCoBot/thirdparty/ros_control/controller_manager_msgs/srv/ListControllerTypes.srv"
    "/home/developer/low_cost_ws/src/pyrobot/robots/LoCoBot/thirdparty/ros_control/controller_manager_msgs/srv/ListControllers.srv"
    "/home/developer/low_cost_ws/src/pyrobot/robots/LoCoBot/thirdparty/ros_control/controller_manager_msgs/srv/LoadController.srv"
    "/home/developer/low_cost_ws/src/pyrobot/robots/LoCoBot/thirdparty/ros_control/controller_manager_msgs/srv/ReloadControllerLibraries.srv"
    "/home/developer/low_cost_ws/src/pyrobot/robots/LoCoBot/thirdparty/ros_control/controller_manager_msgs/srv/SwitchController.srv"
    "/home/developer/low_cost_ws/src/pyrobot/robots/LoCoBot/thirdparty/ros_control/controller_manager_msgs/srv/UnloadController.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/controller_manager_msgs/cmake" TYPE FILE FILES "/home/developer/low_cost_ws/build/pyrobot/robots/LoCoBot/thirdparty/ros_control/controller_manager_msgs/catkin_generated/installspace/controller_manager_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/developer/low_cost_ws/devel/include/controller_manager_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/developer/low_cost_ws/devel/share/roseus/ros/controller_manager_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/developer/low_cost_ws/devel/share/common-lisp/ros/controller_manager_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/developer/low_cost_ws/devel/share/gennodejs/ros/controller_manager_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/home/developer/pyenv_pyrobot_python3/bin/python" -m compileall "/home/developer/low_cost_ws/devel/lib/python3/dist-packages/controller_manager_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/developer/low_cost_ws/devel/lib/python3/dist-packages/controller_manager_msgs" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/developer/low_cost_ws/devel/lib/python3/dist-packages/controller_manager_msgs" FILES_MATCHING REGEX "/home/developer/low_cost_ws/devel/lib/python3/dist-packages/controller_manager_msgs/.+/__init__.pyc?$")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/developer/low_cost_ws/build/pyrobot/robots/LoCoBot/thirdparty/ros_control/controller_manager_msgs/catkin_generated/installspace/controller_manager_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/controller_manager_msgs/cmake" TYPE FILE FILES "/home/developer/low_cost_ws/build/pyrobot/robots/LoCoBot/thirdparty/ros_control/controller_manager_msgs/catkin_generated/installspace/controller_manager_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/controller_manager_msgs/cmake" TYPE FILE FILES
    "/home/developer/low_cost_ws/build/pyrobot/robots/LoCoBot/thirdparty/ros_control/controller_manager_msgs/catkin_generated/installspace/controller_manager_msgsConfig.cmake"
    "/home/developer/low_cost_ws/build/pyrobot/robots/LoCoBot/thirdparty/ros_control/controller_manager_msgs/catkin_generated/installspace/controller_manager_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/controller_manager_msgs" TYPE FILE FILES "/home/developer/low_cost_ws/src/pyrobot/robots/LoCoBot/thirdparty/ros_control/controller_manager_msgs/package.xml")
endif()

