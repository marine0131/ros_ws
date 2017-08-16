# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "my_action_lib: 7 messages, 0 services")

set(MSG_I_FLAGS "-Imy_action_lib:/home/whj/catkin_ws/devel/share/my_action_lib/msg;-Iactionlib_msgs:/opt/ros/indigo/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(my_action_lib_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesActionResult.msg" NAME_WE)
add_custom_target(_my_action_lib_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_action_lib" "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesActionResult.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:my_action_lib/DoDishesResult:std_msgs/Header"
)

get_filename_component(_filename "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesGoal.msg" NAME_WE)
add_custom_target(_my_action_lib_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_action_lib" "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesGoal.msg" ""
)

get_filename_component(_filename "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesActionFeedback.msg" NAME_WE)
add_custom_target(_my_action_lib_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_action_lib" "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesActionFeedback.msg" "my_action_lib/DoDishesFeedback:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesAction.msg" NAME_WE)
add_custom_target(_my_action_lib_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_action_lib" "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesAction.msg" "my_action_lib/DoDishesActionResult:my_action_lib/DoDishesFeedback:my_action_lib/DoDishesActionGoal:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:my_action_lib/DoDishesActionFeedback:my_action_lib/DoDishesGoal:my_action_lib/DoDishesResult:std_msgs/Header"
)

get_filename_component(_filename "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesResult.msg" NAME_WE)
add_custom_target(_my_action_lib_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_action_lib" "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesResult.msg" ""
)

get_filename_component(_filename "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesActionGoal.msg" NAME_WE)
add_custom_target(_my_action_lib_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_action_lib" "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesActionGoal.msg" "my_action_lib/DoDishesGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesFeedback.msg" NAME_WE)
add_custom_target(_my_action_lib_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_action_lib" "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesFeedback.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(my_action_lib
  "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesResult.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_action_lib
)
_generate_msg_cpp(my_action_lib
  "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_action_lib
)
_generate_msg_cpp(my_action_lib
  "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesFeedback.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_action_lib
)
_generate_msg_cpp(my_action_lib
  "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesAction.msg"
  "${MSG_I_FLAGS}"
  "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesActionResult.msg;/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesFeedback.msg;/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesActionGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesActionFeedback.msg;/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesGoal.msg;/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesResult.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_action_lib
)
_generate_msg_cpp(my_action_lib
  "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_action_lib
)
_generate_msg_cpp(my_action_lib
  "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_action_lib
)
_generate_msg_cpp(my_action_lib
  "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_action_lib
)

### Generating Services

### Generating Module File
_generate_module_cpp(my_action_lib
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_action_lib
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(my_action_lib_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(my_action_lib_generate_messages my_action_lib_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesActionResult.msg" NAME_WE)
add_dependencies(my_action_lib_generate_messages_cpp _my_action_lib_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesGoal.msg" NAME_WE)
add_dependencies(my_action_lib_generate_messages_cpp _my_action_lib_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesActionFeedback.msg" NAME_WE)
add_dependencies(my_action_lib_generate_messages_cpp _my_action_lib_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesAction.msg" NAME_WE)
add_dependencies(my_action_lib_generate_messages_cpp _my_action_lib_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesResult.msg" NAME_WE)
add_dependencies(my_action_lib_generate_messages_cpp _my_action_lib_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesActionGoal.msg" NAME_WE)
add_dependencies(my_action_lib_generate_messages_cpp _my_action_lib_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesFeedback.msg" NAME_WE)
add_dependencies(my_action_lib_generate_messages_cpp _my_action_lib_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_action_lib_gencpp)
add_dependencies(my_action_lib_gencpp my_action_lib_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_action_lib_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(my_action_lib
  "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesResult.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_action_lib
)
_generate_msg_lisp(my_action_lib
  "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_action_lib
)
_generate_msg_lisp(my_action_lib
  "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesFeedback.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_action_lib
)
_generate_msg_lisp(my_action_lib
  "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesAction.msg"
  "${MSG_I_FLAGS}"
  "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesActionResult.msg;/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesFeedback.msg;/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesActionGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesActionFeedback.msg;/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesGoal.msg;/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesResult.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_action_lib
)
_generate_msg_lisp(my_action_lib
  "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_action_lib
)
_generate_msg_lisp(my_action_lib
  "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_action_lib
)
_generate_msg_lisp(my_action_lib
  "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_action_lib
)

### Generating Services

### Generating Module File
_generate_module_lisp(my_action_lib
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_action_lib
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(my_action_lib_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(my_action_lib_generate_messages my_action_lib_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesActionResult.msg" NAME_WE)
add_dependencies(my_action_lib_generate_messages_lisp _my_action_lib_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesGoal.msg" NAME_WE)
add_dependencies(my_action_lib_generate_messages_lisp _my_action_lib_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesActionFeedback.msg" NAME_WE)
add_dependencies(my_action_lib_generate_messages_lisp _my_action_lib_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesAction.msg" NAME_WE)
add_dependencies(my_action_lib_generate_messages_lisp _my_action_lib_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesResult.msg" NAME_WE)
add_dependencies(my_action_lib_generate_messages_lisp _my_action_lib_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesActionGoal.msg" NAME_WE)
add_dependencies(my_action_lib_generate_messages_lisp _my_action_lib_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesFeedback.msg" NAME_WE)
add_dependencies(my_action_lib_generate_messages_lisp _my_action_lib_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_action_lib_genlisp)
add_dependencies(my_action_lib_genlisp my_action_lib_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_action_lib_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(my_action_lib
  "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesResult.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_action_lib
)
_generate_msg_py(my_action_lib
  "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_action_lib
)
_generate_msg_py(my_action_lib
  "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesFeedback.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_action_lib
)
_generate_msg_py(my_action_lib
  "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesAction.msg"
  "${MSG_I_FLAGS}"
  "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesActionResult.msg;/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesFeedback.msg;/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesActionGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesActionFeedback.msg;/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesGoal.msg;/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesResult.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_action_lib
)
_generate_msg_py(my_action_lib
  "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_action_lib
)
_generate_msg_py(my_action_lib
  "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_action_lib
)
_generate_msg_py(my_action_lib
  "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_action_lib
)

### Generating Services

### Generating Module File
_generate_module_py(my_action_lib
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_action_lib
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(my_action_lib_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(my_action_lib_generate_messages my_action_lib_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesActionResult.msg" NAME_WE)
add_dependencies(my_action_lib_generate_messages_py _my_action_lib_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesGoal.msg" NAME_WE)
add_dependencies(my_action_lib_generate_messages_py _my_action_lib_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesActionFeedback.msg" NAME_WE)
add_dependencies(my_action_lib_generate_messages_py _my_action_lib_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesAction.msg" NAME_WE)
add_dependencies(my_action_lib_generate_messages_py _my_action_lib_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesResult.msg" NAME_WE)
add_dependencies(my_action_lib_generate_messages_py _my_action_lib_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesActionGoal.msg" NAME_WE)
add_dependencies(my_action_lib_generate_messages_py _my_action_lib_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/devel/share/my_action_lib/msg/DoDishesFeedback.msg" NAME_WE)
add_dependencies(my_action_lib_generate_messages_py _my_action_lib_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_action_lib_genpy)
add_dependencies(my_action_lib_genpy my_action_lib_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_action_lib_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_action_lib)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_action_lib
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(my_action_lib_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_action_lib)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_action_lib
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(my_action_lib_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_action_lib)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_action_lib\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_action_lib
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(my_action_lib_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
