# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "hellocm_msgs: 4 messages, 1 services")

set(MSG_I_FLAGS "-Ihellocm_msgs:/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(hellocm_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/GPS_Out.msg" NAME_WE)
add_custom_target(_hellocm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hellocm_msgs" "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/GPS_Out.msg" "std_msgs/Header"
)

get_filename_component(_filename "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/srv/Init.srv" NAME_WE)
add_custom_target(_hellocm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hellocm_msgs" "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/srv/Init.srv" ""
)

get_filename_component(_filename "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/Vehicle_Out.msg" NAME_WE)
add_custom_target(_hellocm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hellocm_msgs" "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/Vehicle_Out.msg" "std_msgs/Header"
)

get_filename_component(_filename "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/CM2Ext.msg" NAME_WE)
add_custom_target(_hellocm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hellocm_msgs" "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/CM2Ext.msg" "std_msgs/Header"
)

get_filename_component(_filename "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/Ext2CM.msg" NAME_WE)
add_custom_target(_hellocm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hellocm_msgs" "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/Ext2CM.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(hellocm_msgs
  "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/Vehicle_Out.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hellocm_msgs
)
_generate_msg_cpp(hellocm_msgs
  "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/GPS_Out.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hellocm_msgs
)
_generate_msg_cpp(hellocm_msgs
  "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/CM2Ext.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hellocm_msgs
)
_generate_msg_cpp(hellocm_msgs
  "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/Ext2CM.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hellocm_msgs
)

### Generating Services
_generate_srv_cpp(hellocm_msgs
  "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/srv/Init.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hellocm_msgs
)

### Generating Module File
_generate_module_cpp(hellocm_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hellocm_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(hellocm_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(hellocm_msgs_generate_messages hellocm_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/GPS_Out.msg" NAME_WE)
add_dependencies(hellocm_msgs_generate_messages_cpp _hellocm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/srv/Init.srv" NAME_WE)
add_dependencies(hellocm_msgs_generate_messages_cpp _hellocm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/Vehicle_Out.msg" NAME_WE)
add_dependencies(hellocm_msgs_generate_messages_cpp _hellocm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/CM2Ext.msg" NAME_WE)
add_dependencies(hellocm_msgs_generate_messages_cpp _hellocm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/Ext2CM.msg" NAME_WE)
add_dependencies(hellocm_msgs_generate_messages_cpp _hellocm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hellocm_msgs_gencpp)
add_dependencies(hellocm_msgs_gencpp hellocm_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hellocm_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(hellocm_msgs
  "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/Vehicle_Out.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hellocm_msgs
)
_generate_msg_eus(hellocm_msgs
  "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/GPS_Out.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hellocm_msgs
)
_generate_msg_eus(hellocm_msgs
  "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/CM2Ext.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hellocm_msgs
)
_generate_msg_eus(hellocm_msgs
  "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/Ext2CM.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hellocm_msgs
)

### Generating Services
_generate_srv_eus(hellocm_msgs
  "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/srv/Init.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hellocm_msgs
)

### Generating Module File
_generate_module_eus(hellocm_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hellocm_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(hellocm_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(hellocm_msgs_generate_messages hellocm_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/GPS_Out.msg" NAME_WE)
add_dependencies(hellocm_msgs_generate_messages_eus _hellocm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/srv/Init.srv" NAME_WE)
add_dependencies(hellocm_msgs_generate_messages_eus _hellocm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/Vehicle_Out.msg" NAME_WE)
add_dependencies(hellocm_msgs_generate_messages_eus _hellocm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/CM2Ext.msg" NAME_WE)
add_dependencies(hellocm_msgs_generate_messages_eus _hellocm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/Ext2CM.msg" NAME_WE)
add_dependencies(hellocm_msgs_generate_messages_eus _hellocm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hellocm_msgs_geneus)
add_dependencies(hellocm_msgs_geneus hellocm_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hellocm_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(hellocm_msgs
  "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/Vehicle_Out.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hellocm_msgs
)
_generate_msg_lisp(hellocm_msgs
  "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/GPS_Out.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hellocm_msgs
)
_generate_msg_lisp(hellocm_msgs
  "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/CM2Ext.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hellocm_msgs
)
_generate_msg_lisp(hellocm_msgs
  "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/Ext2CM.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hellocm_msgs
)

### Generating Services
_generate_srv_lisp(hellocm_msgs
  "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/srv/Init.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hellocm_msgs
)

### Generating Module File
_generate_module_lisp(hellocm_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hellocm_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(hellocm_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(hellocm_msgs_generate_messages hellocm_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/GPS_Out.msg" NAME_WE)
add_dependencies(hellocm_msgs_generate_messages_lisp _hellocm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/srv/Init.srv" NAME_WE)
add_dependencies(hellocm_msgs_generate_messages_lisp _hellocm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/Vehicle_Out.msg" NAME_WE)
add_dependencies(hellocm_msgs_generate_messages_lisp _hellocm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/CM2Ext.msg" NAME_WE)
add_dependencies(hellocm_msgs_generate_messages_lisp _hellocm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/Ext2CM.msg" NAME_WE)
add_dependencies(hellocm_msgs_generate_messages_lisp _hellocm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hellocm_msgs_genlisp)
add_dependencies(hellocm_msgs_genlisp hellocm_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hellocm_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(hellocm_msgs
  "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/Vehicle_Out.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hellocm_msgs
)
_generate_msg_nodejs(hellocm_msgs
  "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/GPS_Out.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hellocm_msgs
)
_generate_msg_nodejs(hellocm_msgs
  "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/CM2Ext.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hellocm_msgs
)
_generate_msg_nodejs(hellocm_msgs
  "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/Ext2CM.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hellocm_msgs
)

### Generating Services
_generate_srv_nodejs(hellocm_msgs
  "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/srv/Init.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hellocm_msgs
)

### Generating Module File
_generate_module_nodejs(hellocm_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hellocm_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(hellocm_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(hellocm_msgs_generate_messages hellocm_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/GPS_Out.msg" NAME_WE)
add_dependencies(hellocm_msgs_generate_messages_nodejs _hellocm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/srv/Init.srv" NAME_WE)
add_dependencies(hellocm_msgs_generate_messages_nodejs _hellocm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/Vehicle_Out.msg" NAME_WE)
add_dependencies(hellocm_msgs_generate_messages_nodejs _hellocm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/CM2Ext.msg" NAME_WE)
add_dependencies(hellocm_msgs_generate_messages_nodejs _hellocm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/Ext2CM.msg" NAME_WE)
add_dependencies(hellocm_msgs_generate_messages_nodejs _hellocm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hellocm_msgs_gennodejs)
add_dependencies(hellocm_msgs_gennodejs hellocm_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hellocm_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(hellocm_msgs
  "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/Vehicle_Out.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hellocm_msgs
)
_generate_msg_py(hellocm_msgs
  "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/GPS_Out.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hellocm_msgs
)
_generate_msg_py(hellocm_msgs
  "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/CM2Ext.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hellocm_msgs
)
_generate_msg_py(hellocm_msgs
  "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/Ext2CM.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hellocm_msgs
)

### Generating Services
_generate_srv_py(hellocm_msgs
  "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/srv/Init.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hellocm_msgs
)

### Generating Module File
_generate_module_py(hellocm_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hellocm_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(hellocm_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(hellocm_msgs_generate_messages hellocm_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/GPS_Out.msg" NAME_WE)
add_dependencies(hellocm_msgs_generate_messages_py _hellocm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/srv/Init.srv" NAME_WE)
add_dependencies(hellocm_msgs_generate_messages_py _hellocm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/Vehicle_Out.msg" NAME_WE)
add_dependencies(hellocm_msgs_generate_messages_py _hellocm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/CM2Ext.msg" NAME_WE)
add_dependencies(hellocm_msgs_generate_messages_py _hellocm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_msgs/msg/Ext2CM.msg" NAME_WE)
add_dependencies(hellocm_msgs_generate_messages_py _hellocm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hellocm_msgs_genpy)
add_dependencies(hellocm_msgs_genpy hellocm_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hellocm_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hellocm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hellocm_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(hellocm_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hellocm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hellocm_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(hellocm_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hellocm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hellocm_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(hellocm_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hellocm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hellocm_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(hellocm_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hellocm_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hellocm_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hellocm_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(hellocm_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
