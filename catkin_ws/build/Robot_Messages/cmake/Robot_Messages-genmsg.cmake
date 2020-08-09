# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "Robot_Messages: 1 messages, 3 services")

set(MSG_I_FLAGS "-IRobot_Messages:/home/anishpawar/catkin_ws/src/Robot_Messages/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(Robot_Messages_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/anishpawar/catkin_ws/src/Robot_Messages/srv/TestSrv.srv" NAME_WE)
add_custom_target(_Robot_Messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "Robot_Messages" "/home/anishpawar/catkin_ws/src/Robot_Messages/srv/TestSrv.srv" ""
)

get_filename_component(_filename "/home/anishpawar/catkin_ws/src/Robot_Messages/msg/HardwareStatus.msg" NAME_WE)
add_custom_target(_Robot_Messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "Robot_Messages" "/home/anishpawar/catkin_ws/src/Robot_Messages/msg/HardwareStatus.msg" ""
)

get_filename_component(_filename "/home/anishpawar/catkin_ws/src/Robot_Messages/srv/CircleArea.srv" NAME_WE)
add_custom_target(_Robot_Messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "Robot_Messages" "/home/anishpawar/catkin_ws/src/Robot_Messages/srv/CircleArea.srv" ""
)

get_filename_component(_filename "/home/anishpawar/catkin_ws/src/Robot_Messages/srv/BatterySrv.srv" NAME_WE)
add_custom_target(_Robot_Messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "Robot_Messages" "/home/anishpawar/catkin_ws/src/Robot_Messages/srv/BatterySrv.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(Robot_Messages
  "/home/anishpawar/catkin_ws/src/Robot_Messages/msg/HardwareStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Robot_Messages
)

### Generating Services
_generate_srv_cpp(Robot_Messages
  "/home/anishpawar/catkin_ws/src/Robot_Messages/srv/TestSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Robot_Messages
)
_generate_srv_cpp(Robot_Messages
  "/home/anishpawar/catkin_ws/src/Robot_Messages/srv/CircleArea.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Robot_Messages
)
_generate_srv_cpp(Robot_Messages
  "/home/anishpawar/catkin_ws/src/Robot_Messages/srv/BatterySrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Robot_Messages
)

### Generating Module File
_generate_module_cpp(Robot_Messages
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Robot_Messages
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(Robot_Messages_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(Robot_Messages_generate_messages Robot_Messages_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/anishpawar/catkin_ws/src/Robot_Messages/srv/TestSrv.srv" NAME_WE)
add_dependencies(Robot_Messages_generate_messages_cpp _Robot_Messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/anishpawar/catkin_ws/src/Robot_Messages/msg/HardwareStatus.msg" NAME_WE)
add_dependencies(Robot_Messages_generate_messages_cpp _Robot_Messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/anishpawar/catkin_ws/src/Robot_Messages/srv/CircleArea.srv" NAME_WE)
add_dependencies(Robot_Messages_generate_messages_cpp _Robot_Messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/anishpawar/catkin_ws/src/Robot_Messages/srv/BatterySrv.srv" NAME_WE)
add_dependencies(Robot_Messages_generate_messages_cpp _Robot_Messages_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Robot_Messages_gencpp)
add_dependencies(Robot_Messages_gencpp Robot_Messages_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Robot_Messages_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(Robot_Messages
  "/home/anishpawar/catkin_ws/src/Robot_Messages/msg/HardwareStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Robot_Messages
)

### Generating Services
_generate_srv_eus(Robot_Messages
  "/home/anishpawar/catkin_ws/src/Robot_Messages/srv/TestSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Robot_Messages
)
_generate_srv_eus(Robot_Messages
  "/home/anishpawar/catkin_ws/src/Robot_Messages/srv/CircleArea.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Robot_Messages
)
_generate_srv_eus(Robot_Messages
  "/home/anishpawar/catkin_ws/src/Robot_Messages/srv/BatterySrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Robot_Messages
)

### Generating Module File
_generate_module_eus(Robot_Messages
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Robot_Messages
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(Robot_Messages_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(Robot_Messages_generate_messages Robot_Messages_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/anishpawar/catkin_ws/src/Robot_Messages/srv/TestSrv.srv" NAME_WE)
add_dependencies(Robot_Messages_generate_messages_eus _Robot_Messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/anishpawar/catkin_ws/src/Robot_Messages/msg/HardwareStatus.msg" NAME_WE)
add_dependencies(Robot_Messages_generate_messages_eus _Robot_Messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/anishpawar/catkin_ws/src/Robot_Messages/srv/CircleArea.srv" NAME_WE)
add_dependencies(Robot_Messages_generate_messages_eus _Robot_Messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/anishpawar/catkin_ws/src/Robot_Messages/srv/BatterySrv.srv" NAME_WE)
add_dependencies(Robot_Messages_generate_messages_eus _Robot_Messages_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Robot_Messages_geneus)
add_dependencies(Robot_Messages_geneus Robot_Messages_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Robot_Messages_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(Robot_Messages
  "/home/anishpawar/catkin_ws/src/Robot_Messages/msg/HardwareStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Robot_Messages
)

### Generating Services
_generate_srv_lisp(Robot_Messages
  "/home/anishpawar/catkin_ws/src/Robot_Messages/srv/TestSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Robot_Messages
)
_generate_srv_lisp(Robot_Messages
  "/home/anishpawar/catkin_ws/src/Robot_Messages/srv/CircleArea.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Robot_Messages
)
_generate_srv_lisp(Robot_Messages
  "/home/anishpawar/catkin_ws/src/Robot_Messages/srv/BatterySrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Robot_Messages
)

### Generating Module File
_generate_module_lisp(Robot_Messages
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Robot_Messages
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(Robot_Messages_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(Robot_Messages_generate_messages Robot_Messages_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/anishpawar/catkin_ws/src/Robot_Messages/srv/TestSrv.srv" NAME_WE)
add_dependencies(Robot_Messages_generate_messages_lisp _Robot_Messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/anishpawar/catkin_ws/src/Robot_Messages/msg/HardwareStatus.msg" NAME_WE)
add_dependencies(Robot_Messages_generate_messages_lisp _Robot_Messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/anishpawar/catkin_ws/src/Robot_Messages/srv/CircleArea.srv" NAME_WE)
add_dependencies(Robot_Messages_generate_messages_lisp _Robot_Messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/anishpawar/catkin_ws/src/Robot_Messages/srv/BatterySrv.srv" NAME_WE)
add_dependencies(Robot_Messages_generate_messages_lisp _Robot_Messages_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Robot_Messages_genlisp)
add_dependencies(Robot_Messages_genlisp Robot_Messages_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Robot_Messages_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(Robot_Messages
  "/home/anishpawar/catkin_ws/src/Robot_Messages/msg/HardwareStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Robot_Messages
)

### Generating Services
_generate_srv_nodejs(Robot_Messages
  "/home/anishpawar/catkin_ws/src/Robot_Messages/srv/TestSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Robot_Messages
)
_generate_srv_nodejs(Robot_Messages
  "/home/anishpawar/catkin_ws/src/Robot_Messages/srv/CircleArea.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Robot_Messages
)
_generate_srv_nodejs(Robot_Messages
  "/home/anishpawar/catkin_ws/src/Robot_Messages/srv/BatterySrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Robot_Messages
)

### Generating Module File
_generate_module_nodejs(Robot_Messages
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Robot_Messages
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(Robot_Messages_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(Robot_Messages_generate_messages Robot_Messages_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/anishpawar/catkin_ws/src/Robot_Messages/srv/TestSrv.srv" NAME_WE)
add_dependencies(Robot_Messages_generate_messages_nodejs _Robot_Messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/anishpawar/catkin_ws/src/Robot_Messages/msg/HardwareStatus.msg" NAME_WE)
add_dependencies(Robot_Messages_generate_messages_nodejs _Robot_Messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/anishpawar/catkin_ws/src/Robot_Messages/srv/CircleArea.srv" NAME_WE)
add_dependencies(Robot_Messages_generate_messages_nodejs _Robot_Messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/anishpawar/catkin_ws/src/Robot_Messages/srv/BatterySrv.srv" NAME_WE)
add_dependencies(Robot_Messages_generate_messages_nodejs _Robot_Messages_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Robot_Messages_gennodejs)
add_dependencies(Robot_Messages_gennodejs Robot_Messages_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Robot_Messages_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(Robot_Messages
  "/home/anishpawar/catkin_ws/src/Robot_Messages/msg/HardwareStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Robot_Messages
)

### Generating Services
_generate_srv_py(Robot_Messages
  "/home/anishpawar/catkin_ws/src/Robot_Messages/srv/TestSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Robot_Messages
)
_generate_srv_py(Robot_Messages
  "/home/anishpawar/catkin_ws/src/Robot_Messages/srv/CircleArea.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Robot_Messages
)
_generate_srv_py(Robot_Messages
  "/home/anishpawar/catkin_ws/src/Robot_Messages/srv/BatterySrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Robot_Messages
)

### Generating Module File
_generate_module_py(Robot_Messages
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Robot_Messages
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(Robot_Messages_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(Robot_Messages_generate_messages Robot_Messages_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/anishpawar/catkin_ws/src/Robot_Messages/srv/TestSrv.srv" NAME_WE)
add_dependencies(Robot_Messages_generate_messages_py _Robot_Messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/anishpawar/catkin_ws/src/Robot_Messages/msg/HardwareStatus.msg" NAME_WE)
add_dependencies(Robot_Messages_generate_messages_py _Robot_Messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/anishpawar/catkin_ws/src/Robot_Messages/srv/CircleArea.srv" NAME_WE)
add_dependencies(Robot_Messages_generate_messages_py _Robot_Messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/anishpawar/catkin_ws/src/Robot_Messages/srv/BatterySrv.srv" NAME_WE)
add_dependencies(Robot_Messages_generate_messages_py _Robot_Messages_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Robot_Messages_genpy)
add_dependencies(Robot_Messages_genpy Robot_Messages_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Robot_Messages_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Robot_Messages)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Robot_Messages
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(Robot_Messages_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Robot_Messages)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Robot_Messages
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(Robot_Messages_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Robot_Messages)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Robot_Messages
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(Robot_Messages_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Robot_Messages)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Robot_Messages
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(Robot_Messages_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Robot_Messages)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Robot_Messages\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Robot_Messages
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(Robot_Messages_generate_messages_py std_msgs_generate_messages_py)
endif()
