# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "api_msgs: 2 messages, 20 services")

set(MSG_I_FLAGS "-Iapi_msgs:/home/whj/catkin_ws/src/api/api_msgs/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(api_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/DelFile.srv" NAME_WE)
add_custom_target(_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "api_msgs" "/home/whj/catkin_ws/src/api/api_msgs/srv/DelFile.srv" ""
)

get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/MapData.srv" NAME_WE)
add_custom_target(_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "api_msgs" "/home/whj/catkin_ws/src/api/api_msgs/srv/MapData.srv" ""
)

get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/AddGoal.srv" NAME_WE)
add_custom_target(_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "api_msgs" "/home/whj/catkin_ws/src/api/api_msgs/srv/AddGoal.srv" ""
)

get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/LaunchCmd.srv" NAME_WE)
add_custom_target(_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "api_msgs" "/home/whj/catkin_ws/src/api/api_msgs/srv/LaunchCmd.srv" ""
)

get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/RenameMap.srv" NAME_WE)
add_custom_target(_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "api_msgs" "/home/whj/catkin_ws/src/api/api_msgs/srv/RenameMap.srv" ""
)

get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/DownloadMap.srv" NAME_WE)
add_custom_target(_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "api_msgs" "/home/whj/catkin_ws/src/api/api_msgs/srv/DownloadMap.srv" ""
)

get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/DelGoal.srv" NAME_WE)
add_custom_target(_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "api_msgs" "/home/whj/catkin_ws/src/api/api_msgs/srv/DelGoal.srv" ""
)

get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/SaveModifiedMap.srv" NAME_WE)
add_custom_target(_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "api_msgs" "/home/whj/catkin_ws/src/api/api_msgs/srv/SaveModifiedMap.srv" ""
)

get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/PredefinedInitialize.srv" NAME_WE)
add_custom_target(_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "api_msgs" "/home/whj/catkin_ws/src/api/api_msgs/srv/PredefinedInitialize.srv" ""
)

get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/SetGoal.srv" NAME_WE)
add_custom_target(_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "api_msgs" "/home/whj/catkin_ws/src/api/api_msgs/srv/SetGoal.srv" ""
)

get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/msg/CustomMoveCmd.msg" NAME_WE)
add_custom_target(_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "api_msgs" "/home/whj/catkin_ws/src/api/api_msgs/msg/CustomMoveCmd.msg" ""
)

get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/GridSonar.srv" NAME_WE)
add_custom_target(_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "api_msgs" "/home/whj/catkin_ws/src/api/api_msgs/srv/GridSonar.srv" ""
)

get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/NavToGoal.srv" NAME_WE)
add_custom_target(_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "api_msgs" "/home/whj/catkin_ws/src/api/api_msgs/srv/NavToGoal.srv" ""
)

get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/RenameGoal.srv" NAME_WE)
add_custom_target(_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "api_msgs" "/home/whj/catkin_ws/src/api/api_msgs/srv/RenameGoal.srv" ""
)

get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/msg/GridPoint.msg" NAME_WE)
add_custom_target(_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "api_msgs" "/home/whj/catkin_ws/src/api/api_msgs/msg/GridPoint.msg" ""
)

get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/GetList.srv" NAME_WE)
add_custom_target(_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "api_msgs" "/home/whj/catkin_ws/src/api/api_msgs/srv/GetList.srv" ""
)

get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/GoalList.srv" NAME_WE)
add_custom_target(_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "api_msgs" "/home/whj/catkin_ws/src/api/api_msgs/srv/GoalList.srv" ""
)

get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/CustomInitialize.srv" NAME_WE)
add_custom_target(_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "api_msgs" "/home/whj/catkin_ws/src/api/api_msgs/srv/CustomInitialize.srv" "api_msgs/GridPoint"
)

get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/UploadMap.srv" NAME_WE)
add_custom_target(_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "api_msgs" "/home/whj/catkin_ws/src/api/api_msgs/srv/UploadMap.srv" ""
)

get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/GridLaser.srv" NAME_WE)
add_custom_target(_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "api_msgs" "/home/whj/catkin_ws/src/api/api_msgs/srv/GridLaser.srv" "api_msgs/GridPoint"
)

get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/DownloadFile.srv" NAME_WE)
add_custom_target(_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "api_msgs" "/home/whj/catkin_ws/src/api/api_msgs/srv/DownloadFile.srv" ""
)

get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/GridPose.srv" NAME_WE)
add_custom_target(_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "api_msgs" "/home/whj/catkin_ws/src/api/api_msgs/srv/GridPose.srv" "api_msgs/GridPoint"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/msg/CustomMoveCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/api_msgs
)
_generate_msg_cpp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/msg/GridPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/api_msgs
)

### Generating Services
_generate_srv_cpp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/DelGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/api_msgs
)
_generate_srv_cpp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/RenameGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/api_msgs
)
_generate_srv_cpp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/DelFile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/api_msgs
)
_generate_srv_cpp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/MapData.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/api_msgs
)
_generate_srv_cpp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/CustomInitialize.srv"
  "${MSG_I_FLAGS}"
  "/home/whj/catkin_ws/src/api/api_msgs/msg/GridPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/api_msgs
)
_generate_srv_cpp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/AddGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/api_msgs
)
_generate_srv_cpp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/SaveModifiedMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/api_msgs
)
_generate_srv_cpp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/LaunchCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/api_msgs
)
_generate_srv_cpp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/PredefinedInitialize.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/api_msgs
)
_generate_srv_cpp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/UploadMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/api_msgs
)
_generate_srv_cpp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/RenameMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/api_msgs
)
_generate_srv_cpp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/GridLaser.srv"
  "${MSG_I_FLAGS}"
  "/home/whj/catkin_ws/src/api/api_msgs/msg/GridPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/api_msgs
)
_generate_srv_cpp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/SetGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/api_msgs
)
_generate_srv_cpp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/GetList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/api_msgs
)
_generate_srv_cpp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/GridSonar.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/api_msgs
)
_generate_srv_cpp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/GoalList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/api_msgs
)
_generate_srv_cpp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/DownloadMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/api_msgs
)
_generate_srv_cpp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/DownloadFile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/api_msgs
)
_generate_srv_cpp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/NavToGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/api_msgs
)
_generate_srv_cpp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/GridPose.srv"
  "${MSG_I_FLAGS}"
  "/home/whj/catkin_ws/src/api/api_msgs/msg/GridPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/api_msgs
)

### Generating Module File
_generate_module_cpp(api_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/api_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(api_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(api_msgs_generate_messages api_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/DelFile.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_cpp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/MapData.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_cpp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/AddGoal.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_cpp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/LaunchCmd.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_cpp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/RenameMap.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_cpp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/DownloadMap.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_cpp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/DelGoal.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_cpp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/SaveModifiedMap.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_cpp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/PredefinedInitialize.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_cpp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/SetGoal.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_cpp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/msg/CustomMoveCmd.msg" NAME_WE)
add_dependencies(api_msgs_generate_messages_cpp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/GridSonar.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_cpp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/NavToGoal.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_cpp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/RenameGoal.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_cpp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/msg/GridPoint.msg" NAME_WE)
add_dependencies(api_msgs_generate_messages_cpp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/GetList.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_cpp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/GoalList.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_cpp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/CustomInitialize.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_cpp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/UploadMap.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_cpp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/GridLaser.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_cpp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/DownloadFile.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_cpp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/GridPose.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_cpp _api_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(api_msgs_gencpp)
add_dependencies(api_msgs_gencpp api_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS api_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/msg/CustomMoveCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/api_msgs
)
_generate_msg_lisp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/msg/GridPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/api_msgs
)

### Generating Services
_generate_srv_lisp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/DelGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/api_msgs
)
_generate_srv_lisp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/RenameGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/api_msgs
)
_generate_srv_lisp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/DelFile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/api_msgs
)
_generate_srv_lisp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/MapData.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/api_msgs
)
_generate_srv_lisp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/CustomInitialize.srv"
  "${MSG_I_FLAGS}"
  "/home/whj/catkin_ws/src/api/api_msgs/msg/GridPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/api_msgs
)
_generate_srv_lisp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/AddGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/api_msgs
)
_generate_srv_lisp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/SaveModifiedMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/api_msgs
)
_generate_srv_lisp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/LaunchCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/api_msgs
)
_generate_srv_lisp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/PredefinedInitialize.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/api_msgs
)
_generate_srv_lisp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/UploadMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/api_msgs
)
_generate_srv_lisp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/RenameMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/api_msgs
)
_generate_srv_lisp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/GridLaser.srv"
  "${MSG_I_FLAGS}"
  "/home/whj/catkin_ws/src/api/api_msgs/msg/GridPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/api_msgs
)
_generate_srv_lisp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/SetGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/api_msgs
)
_generate_srv_lisp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/GetList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/api_msgs
)
_generate_srv_lisp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/GridSonar.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/api_msgs
)
_generate_srv_lisp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/GoalList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/api_msgs
)
_generate_srv_lisp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/DownloadMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/api_msgs
)
_generate_srv_lisp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/DownloadFile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/api_msgs
)
_generate_srv_lisp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/NavToGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/api_msgs
)
_generate_srv_lisp(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/GridPose.srv"
  "${MSG_I_FLAGS}"
  "/home/whj/catkin_ws/src/api/api_msgs/msg/GridPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/api_msgs
)

### Generating Module File
_generate_module_lisp(api_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/api_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(api_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(api_msgs_generate_messages api_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/DelFile.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_lisp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/MapData.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_lisp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/AddGoal.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_lisp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/LaunchCmd.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_lisp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/RenameMap.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_lisp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/DownloadMap.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_lisp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/DelGoal.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_lisp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/SaveModifiedMap.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_lisp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/PredefinedInitialize.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_lisp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/SetGoal.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_lisp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/msg/CustomMoveCmd.msg" NAME_WE)
add_dependencies(api_msgs_generate_messages_lisp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/GridSonar.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_lisp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/NavToGoal.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_lisp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/RenameGoal.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_lisp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/msg/GridPoint.msg" NAME_WE)
add_dependencies(api_msgs_generate_messages_lisp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/GetList.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_lisp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/GoalList.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_lisp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/CustomInitialize.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_lisp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/UploadMap.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_lisp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/GridLaser.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_lisp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/DownloadFile.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_lisp _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/GridPose.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_lisp _api_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(api_msgs_genlisp)
add_dependencies(api_msgs_genlisp api_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS api_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/msg/CustomMoveCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api_msgs
)
_generate_msg_py(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/msg/GridPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api_msgs
)

### Generating Services
_generate_srv_py(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/DelGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api_msgs
)
_generate_srv_py(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/RenameGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api_msgs
)
_generate_srv_py(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/DelFile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api_msgs
)
_generate_srv_py(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/MapData.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api_msgs
)
_generate_srv_py(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/CustomInitialize.srv"
  "${MSG_I_FLAGS}"
  "/home/whj/catkin_ws/src/api/api_msgs/msg/GridPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api_msgs
)
_generate_srv_py(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/AddGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api_msgs
)
_generate_srv_py(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/SaveModifiedMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api_msgs
)
_generate_srv_py(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/LaunchCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api_msgs
)
_generate_srv_py(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/PredefinedInitialize.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api_msgs
)
_generate_srv_py(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/UploadMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api_msgs
)
_generate_srv_py(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/RenameMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api_msgs
)
_generate_srv_py(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/GridLaser.srv"
  "${MSG_I_FLAGS}"
  "/home/whj/catkin_ws/src/api/api_msgs/msg/GridPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api_msgs
)
_generate_srv_py(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/SetGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api_msgs
)
_generate_srv_py(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/GetList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api_msgs
)
_generate_srv_py(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/GridSonar.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api_msgs
)
_generate_srv_py(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/GoalList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api_msgs
)
_generate_srv_py(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/DownloadMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api_msgs
)
_generate_srv_py(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/DownloadFile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api_msgs
)
_generate_srv_py(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/NavToGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api_msgs
)
_generate_srv_py(api_msgs
  "/home/whj/catkin_ws/src/api/api_msgs/srv/GridPose.srv"
  "${MSG_I_FLAGS}"
  "/home/whj/catkin_ws/src/api/api_msgs/msg/GridPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api_msgs
)

### Generating Module File
_generate_module_py(api_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(api_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(api_msgs_generate_messages api_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/DelFile.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_py _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/MapData.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_py _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/AddGoal.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_py _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/LaunchCmd.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_py _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/RenameMap.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_py _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/DownloadMap.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_py _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/DelGoal.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_py _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/SaveModifiedMap.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_py _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/PredefinedInitialize.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_py _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/SetGoal.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_py _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/msg/CustomMoveCmd.msg" NAME_WE)
add_dependencies(api_msgs_generate_messages_py _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/GridSonar.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_py _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/NavToGoal.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_py _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/RenameGoal.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_py _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/msg/GridPoint.msg" NAME_WE)
add_dependencies(api_msgs_generate_messages_py _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/GetList.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_py _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/GoalList.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_py _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/CustomInitialize.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_py _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/UploadMap.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_py _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/GridLaser.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_py _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/DownloadFile.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_py _api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/api_msgs/srv/GridPose.srv" NAME_WE)
add_dependencies(api_msgs_generate_messages_py _api_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(api_msgs_genpy)
add_dependencies(api_msgs_genpy api_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS api_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/api_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/api_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(api_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/api_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/api_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(api_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(api_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
