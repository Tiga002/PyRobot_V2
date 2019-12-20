# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pyrobot_bridge: 0 messages, 2 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pyrobot_bridge_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/developer/low_cost_ws/src/pyrobot/pyrobot_bridge/srv/IkCommand.srv" NAME_WE)
add_custom_target(_pyrobot_bridge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pyrobot_bridge" "/home/developer/low_cost_ws/src/pyrobot/pyrobot_bridge/srv/IkCommand.srv" ""
)

get_filename_component(_filename "/home/developer/low_cost_ws/src/pyrobot/pyrobot_bridge/srv/FkCommand.srv" NAME_WE)
add_custom_target(_pyrobot_bridge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pyrobot_bridge" "/home/developer/low_cost_ws/src/pyrobot/pyrobot_bridge/srv/FkCommand.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(pyrobot_bridge
  "/home/developer/low_cost_ws/src/pyrobot/pyrobot_bridge/srv/IkCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pyrobot_bridge
)
_generate_srv_cpp(pyrobot_bridge
  "/home/developer/low_cost_ws/src/pyrobot/pyrobot_bridge/srv/FkCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pyrobot_bridge
)

### Generating Module File
_generate_module_cpp(pyrobot_bridge
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pyrobot_bridge
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pyrobot_bridge_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pyrobot_bridge_generate_messages pyrobot_bridge_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/developer/low_cost_ws/src/pyrobot/pyrobot_bridge/srv/IkCommand.srv" NAME_WE)
add_dependencies(pyrobot_bridge_generate_messages_cpp _pyrobot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/developer/low_cost_ws/src/pyrobot/pyrobot_bridge/srv/FkCommand.srv" NAME_WE)
add_dependencies(pyrobot_bridge_generate_messages_cpp _pyrobot_bridge_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pyrobot_bridge_gencpp)
add_dependencies(pyrobot_bridge_gencpp pyrobot_bridge_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pyrobot_bridge_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(pyrobot_bridge
  "/home/developer/low_cost_ws/src/pyrobot/pyrobot_bridge/srv/IkCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pyrobot_bridge
)
_generate_srv_eus(pyrobot_bridge
  "/home/developer/low_cost_ws/src/pyrobot/pyrobot_bridge/srv/FkCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pyrobot_bridge
)

### Generating Module File
_generate_module_eus(pyrobot_bridge
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pyrobot_bridge
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(pyrobot_bridge_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(pyrobot_bridge_generate_messages pyrobot_bridge_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/developer/low_cost_ws/src/pyrobot/pyrobot_bridge/srv/IkCommand.srv" NAME_WE)
add_dependencies(pyrobot_bridge_generate_messages_eus _pyrobot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/developer/low_cost_ws/src/pyrobot/pyrobot_bridge/srv/FkCommand.srv" NAME_WE)
add_dependencies(pyrobot_bridge_generate_messages_eus _pyrobot_bridge_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pyrobot_bridge_geneus)
add_dependencies(pyrobot_bridge_geneus pyrobot_bridge_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pyrobot_bridge_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(pyrobot_bridge
  "/home/developer/low_cost_ws/src/pyrobot/pyrobot_bridge/srv/IkCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pyrobot_bridge
)
_generate_srv_lisp(pyrobot_bridge
  "/home/developer/low_cost_ws/src/pyrobot/pyrobot_bridge/srv/FkCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pyrobot_bridge
)

### Generating Module File
_generate_module_lisp(pyrobot_bridge
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pyrobot_bridge
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pyrobot_bridge_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pyrobot_bridge_generate_messages pyrobot_bridge_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/developer/low_cost_ws/src/pyrobot/pyrobot_bridge/srv/IkCommand.srv" NAME_WE)
add_dependencies(pyrobot_bridge_generate_messages_lisp _pyrobot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/developer/low_cost_ws/src/pyrobot/pyrobot_bridge/srv/FkCommand.srv" NAME_WE)
add_dependencies(pyrobot_bridge_generate_messages_lisp _pyrobot_bridge_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pyrobot_bridge_genlisp)
add_dependencies(pyrobot_bridge_genlisp pyrobot_bridge_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pyrobot_bridge_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(pyrobot_bridge
  "/home/developer/low_cost_ws/src/pyrobot/pyrobot_bridge/srv/IkCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pyrobot_bridge
)
_generate_srv_nodejs(pyrobot_bridge
  "/home/developer/low_cost_ws/src/pyrobot/pyrobot_bridge/srv/FkCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pyrobot_bridge
)

### Generating Module File
_generate_module_nodejs(pyrobot_bridge
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pyrobot_bridge
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(pyrobot_bridge_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(pyrobot_bridge_generate_messages pyrobot_bridge_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/developer/low_cost_ws/src/pyrobot/pyrobot_bridge/srv/IkCommand.srv" NAME_WE)
add_dependencies(pyrobot_bridge_generate_messages_nodejs _pyrobot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/developer/low_cost_ws/src/pyrobot/pyrobot_bridge/srv/FkCommand.srv" NAME_WE)
add_dependencies(pyrobot_bridge_generate_messages_nodejs _pyrobot_bridge_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pyrobot_bridge_gennodejs)
add_dependencies(pyrobot_bridge_gennodejs pyrobot_bridge_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pyrobot_bridge_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(pyrobot_bridge
  "/home/developer/low_cost_ws/src/pyrobot/pyrobot_bridge/srv/IkCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pyrobot_bridge
)
_generate_srv_py(pyrobot_bridge
  "/home/developer/low_cost_ws/src/pyrobot/pyrobot_bridge/srv/FkCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pyrobot_bridge
)

### Generating Module File
_generate_module_py(pyrobot_bridge
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pyrobot_bridge
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pyrobot_bridge_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pyrobot_bridge_generate_messages pyrobot_bridge_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/developer/low_cost_ws/src/pyrobot/pyrobot_bridge/srv/IkCommand.srv" NAME_WE)
add_dependencies(pyrobot_bridge_generate_messages_py _pyrobot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/developer/low_cost_ws/src/pyrobot/pyrobot_bridge/srv/FkCommand.srv" NAME_WE)
add_dependencies(pyrobot_bridge_generate_messages_py _pyrobot_bridge_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pyrobot_bridge_genpy)
add_dependencies(pyrobot_bridge_genpy pyrobot_bridge_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pyrobot_bridge_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pyrobot_bridge)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pyrobot_bridge
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(pyrobot_bridge_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pyrobot_bridge)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pyrobot_bridge
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(pyrobot_bridge_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pyrobot_bridge)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pyrobot_bridge
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(pyrobot_bridge_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pyrobot_bridge)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pyrobot_bridge
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(pyrobot_bridge_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pyrobot_bridge)
  install(CODE "execute_process(COMMAND \"/home/developer/pyenv_pyrobot_python3/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pyrobot_bridge\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pyrobot_bridge
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(pyrobot_bridge_generate_messages_py std_msgs_generate_messages_py)
endif()
