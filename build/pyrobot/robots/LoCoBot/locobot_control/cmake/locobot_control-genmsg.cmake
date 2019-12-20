# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "locobot_control: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(locobot_control_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/developer/low_cost_ws/src/pyrobot/robots/LoCoBot/locobot_control/srv/JointCommand.srv" NAME_WE)
add_custom_target(_locobot_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "locobot_control" "/home/developer/low_cost_ws/src/pyrobot/robots/LoCoBot/locobot_control/srv/JointCommand.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(locobot_control
  "/home/developer/low_cost_ws/src/pyrobot/robots/LoCoBot/locobot_control/srv/JointCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/locobot_control
)

### Generating Module File
_generate_module_cpp(locobot_control
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/locobot_control
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(locobot_control_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(locobot_control_generate_messages locobot_control_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/developer/low_cost_ws/src/pyrobot/robots/LoCoBot/locobot_control/srv/JointCommand.srv" NAME_WE)
add_dependencies(locobot_control_generate_messages_cpp _locobot_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(locobot_control_gencpp)
add_dependencies(locobot_control_gencpp locobot_control_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS locobot_control_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(locobot_control
  "/home/developer/low_cost_ws/src/pyrobot/robots/LoCoBot/locobot_control/srv/JointCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/locobot_control
)

### Generating Module File
_generate_module_eus(locobot_control
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/locobot_control
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(locobot_control_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(locobot_control_generate_messages locobot_control_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/developer/low_cost_ws/src/pyrobot/robots/LoCoBot/locobot_control/srv/JointCommand.srv" NAME_WE)
add_dependencies(locobot_control_generate_messages_eus _locobot_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(locobot_control_geneus)
add_dependencies(locobot_control_geneus locobot_control_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS locobot_control_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(locobot_control
  "/home/developer/low_cost_ws/src/pyrobot/robots/LoCoBot/locobot_control/srv/JointCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/locobot_control
)

### Generating Module File
_generate_module_lisp(locobot_control
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/locobot_control
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(locobot_control_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(locobot_control_generate_messages locobot_control_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/developer/low_cost_ws/src/pyrobot/robots/LoCoBot/locobot_control/srv/JointCommand.srv" NAME_WE)
add_dependencies(locobot_control_generate_messages_lisp _locobot_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(locobot_control_genlisp)
add_dependencies(locobot_control_genlisp locobot_control_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS locobot_control_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(locobot_control
  "/home/developer/low_cost_ws/src/pyrobot/robots/LoCoBot/locobot_control/srv/JointCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/locobot_control
)

### Generating Module File
_generate_module_nodejs(locobot_control
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/locobot_control
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(locobot_control_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(locobot_control_generate_messages locobot_control_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/developer/low_cost_ws/src/pyrobot/robots/LoCoBot/locobot_control/srv/JointCommand.srv" NAME_WE)
add_dependencies(locobot_control_generate_messages_nodejs _locobot_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(locobot_control_gennodejs)
add_dependencies(locobot_control_gennodejs locobot_control_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS locobot_control_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(locobot_control
  "/home/developer/low_cost_ws/src/pyrobot/robots/LoCoBot/locobot_control/srv/JointCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/locobot_control
)

### Generating Module File
_generate_module_py(locobot_control
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/locobot_control
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(locobot_control_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(locobot_control_generate_messages locobot_control_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/developer/low_cost_ws/src/pyrobot/robots/LoCoBot/locobot_control/srv/JointCommand.srv" NAME_WE)
add_dependencies(locobot_control_generate_messages_py _locobot_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(locobot_control_genpy)
add_dependencies(locobot_control_genpy locobot_control_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS locobot_control_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/locobot_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/locobot_control
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(locobot_control_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/locobot_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/locobot_control
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(locobot_control_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/locobot_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/locobot_control
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(locobot_control_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/locobot_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/locobot_control
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(locobot_control_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/locobot_control)
  install(CODE "execute_process(COMMAND \"/home/developer/pyenv_pyrobot_python3/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/locobot_control\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/locobot_control
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/locobot_control
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/locobot_control/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(locobot_control_generate_messages_py std_msgs_generate_messages_py)
endif()
