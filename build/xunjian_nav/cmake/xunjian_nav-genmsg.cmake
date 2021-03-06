# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "xunjian_nav: 3 messages, 0 services")

set(MSG_I_FLAGS "-Ixunjian_nav:/home/whj/catkin_ws/src/xunjian_nav/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(xunjian_nav_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/whj/catkin_ws/src/xunjian_nav/msg/Sonar.msg" NAME_WE)
add_custom_target(_xunjian_nav_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xunjian_nav" "/home/whj/catkin_ws/src/xunjian_nav/msg/Sonar.msg" ""
)

get_filename_component(_filename "/home/whj/catkin_ws/src/xunjian_nav/msg/Encoder.msg" NAME_WE)
add_custom_target(_xunjian_nav_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xunjian_nav" "/home/whj/catkin_ws/src/xunjian_nav/msg/Encoder.msg" ""
)

get_filename_component(_filename "/home/whj/catkin_ws/src/xunjian_nav/msg/Ultrasound.msg" NAME_WE)
add_custom_target(_xunjian_nav_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xunjian_nav" "/home/whj/catkin_ws/src/xunjian_nav/msg/Ultrasound.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(xunjian_nav
  "/home/whj/catkin_ws/src/xunjian_nav/msg/Sonar.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xunjian_nav
)
_generate_msg_cpp(xunjian_nav
  "/home/whj/catkin_ws/src/xunjian_nav/msg/Encoder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xunjian_nav
)
_generate_msg_cpp(xunjian_nav
  "/home/whj/catkin_ws/src/xunjian_nav/msg/Ultrasound.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xunjian_nav
)

### Generating Services

### Generating Module File
_generate_module_cpp(xunjian_nav
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xunjian_nav
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(xunjian_nav_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(xunjian_nav_generate_messages xunjian_nav_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/whj/catkin_ws/src/xunjian_nav/msg/Sonar.msg" NAME_WE)
add_dependencies(xunjian_nav_generate_messages_cpp _xunjian_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/xunjian_nav/msg/Encoder.msg" NAME_WE)
add_dependencies(xunjian_nav_generate_messages_cpp _xunjian_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/xunjian_nav/msg/Ultrasound.msg" NAME_WE)
add_dependencies(xunjian_nav_generate_messages_cpp _xunjian_nav_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xunjian_nav_gencpp)
add_dependencies(xunjian_nav_gencpp xunjian_nav_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xunjian_nav_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(xunjian_nav
  "/home/whj/catkin_ws/src/xunjian_nav/msg/Sonar.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xunjian_nav
)
_generate_msg_lisp(xunjian_nav
  "/home/whj/catkin_ws/src/xunjian_nav/msg/Encoder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xunjian_nav
)
_generate_msg_lisp(xunjian_nav
  "/home/whj/catkin_ws/src/xunjian_nav/msg/Ultrasound.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xunjian_nav
)

### Generating Services

### Generating Module File
_generate_module_lisp(xunjian_nav
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xunjian_nav
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(xunjian_nav_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(xunjian_nav_generate_messages xunjian_nav_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/whj/catkin_ws/src/xunjian_nav/msg/Sonar.msg" NAME_WE)
add_dependencies(xunjian_nav_generate_messages_lisp _xunjian_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/xunjian_nav/msg/Encoder.msg" NAME_WE)
add_dependencies(xunjian_nav_generate_messages_lisp _xunjian_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/xunjian_nav/msg/Ultrasound.msg" NAME_WE)
add_dependencies(xunjian_nav_generate_messages_lisp _xunjian_nav_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xunjian_nav_genlisp)
add_dependencies(xunjian_nav_genlisp xunjian_nav_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xunjian_nav_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(xunjian_nav
  "/home/whj/catkin_ws/src/xunjian_nav/msg/Sonar.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xunjian_nav
)
_generate_msg_py(xunjian_nav
  "/home/whj/catkin_ws/src/xunjian_nav/msg/Encoder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xunjian_nav
)
_generate_msg_py(xunjian_nav
  "/home/whj/catkin_ws/src/xunjian_nav/msg/Ultrasound.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xunjian_nav
)

### Generating Services

### Generating Module File
_generate_module_py(xunjian_nav
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xunjian_nav
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(xunjian_nav_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(xunjian_nav_generate_messages xunjian_nav_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/whj/catkin_ws/src/xunjian_nav/msg/Sonar.msg" NAME_WE)
add_dependencies(xunjian_nav_generate_messages_py _xunjian_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/xunjian_nav/msg/Encoder.msg" NAME_WE)
add_dependencies(xunjian_nav_generate_messages_py _xunjian_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/xunjian_nav/msg/Ultrasound.msg" NAME_WE)
add_dependencies(xunjian_nav_generate_messages_py _xunjian_nav_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xunjian_nav_genpy)
add_dependencies(xunjian_nav_genpy xunjian_nav_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xunjian_nav_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xunjian_nav)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xunjian_nav
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(xunjian_nav_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xunjian_nav)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xunjian_nav
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(xunjian_nav_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xunjian_nav)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xunjian_nav\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xunjian_nav
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(xunjian_nav_generate_messages_py std_msgs_generate_messages_py)
endif()
