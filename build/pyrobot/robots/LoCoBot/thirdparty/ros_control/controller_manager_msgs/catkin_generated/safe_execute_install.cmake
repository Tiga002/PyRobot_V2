execute_process(COMMAND "/home/developer/low_cost_ws/build/pyrobot/robots/LoCoBot/thirdparty/ros_control/controller_manager_msgs/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/developer/low_cost_ws/build/pyrobot/robots/LoCoBot/thirdparty/ros_control/controller_manager_msgs/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
