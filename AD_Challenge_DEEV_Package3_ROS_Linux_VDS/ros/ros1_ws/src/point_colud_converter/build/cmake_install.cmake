# Install script for directory: /media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package1_Linux_v1_dhk/AD_Challenge_DEEV_Package1_Linux/ros/point_cloud_converter-hydro-devel

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local" TYPE PROGRAM FILES "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package1_Linux_v1_dhk/AD_Challenge_DEEV_Package1_Linux/ros/point_cloud_converter-hydro-devel/build/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local" TYPE PROGRAM FILES "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package1_Linux_v1_dhk/AD_Challenge_DEEV_Package1_Linux/ros/point_cloud_converter-hydro-devel/build/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/setup.bash;/usr/local/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local" TYPE FILE FILES
    "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package1_Linux_v1_dhk/AD_Challenge_DEEV_Package1_Linux/ros/point_cloud_converter-hydro-devel/build/catkin_generated/installspace/setup.bash"
    "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package1_Linux_v1_dhk/AD_Challenge_DEEV_Package1_Linux/ros/point_cloud_converter-hydro-devel/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/setup.sh;/usr/local/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local" TYPE FILE FILES
    "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package1_Linux_v1_dhk/AD_Challenge_DEEV_Package1_Linux/ros/point_cloud_converter-hydro-devel/build/catkin_generated/installspace/setup.sh"
    "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package1_Linux_v1_dhk/AD_Challenge_DEEV_Package1_Linux/ros/point_cloud_converter-hydro-devel/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/setup.zsh;/usr/local/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local" TYPE FILE FILES
    "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package1_Linux_v1_dhk/AD_Challenge_DEEV_Package1_Linux/ros/point_cloud_converter-hydro-devel/build/catkin_generated/installspace/setup.zsh"
    "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package1_Linux_v1_dhk/AD_Challenge_DEEV_Package1_Linux/ros/point_cloud_converter-hydro-devel/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local" TYPE FILE FILES "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package1_Linux_v1_dhk/AD_Challenge_DEEV_Package1_Linux/ros/point_cloud_converter-hydro-devel/build/catkin_generated/installspace/.rosinstall")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package1_Linux_v1_dhk/AD_Challenge_DEEV_Package1_Linux/ros/point_cloud_converter-hydro-devel/build/catkin_generated/installspace/point_cloud_converter.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/point_cloud_converter/cmake" TYPE FILE FILES
    "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package1_Linux_v1_dhk/AD_Challenge_DEEV_Package1_Linux/ros/point_cloud_converter-hydro-devel/build/catkin_generated/installspace/point_cloud_converterConfig.cmake"
    "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package1_Linux_v1_dhk/AD_Challenge_DEEV_Package1_Linux/ros/point_cloud_converter-hydro-devel/build/catkin_generated/installspace/point_cloud_converterConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/point_cloud_converter" TYPE FILE FILES "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package1_Linux_v1_dhk/AD_Challenge_DEEV_Package1_Linux/ros/point_cloud_converter-hydro-devel/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/point_cloud_converter/point_cloud_converter_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/point_cloud_converter/point_cloud_converter_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/point_cloud_converter/point_cloud_converter_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/point_cloud_converter" TYPE EXECUTABLE FILES "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package1_Linux_v1_dhk/AD_Challenge_DEEV_Package1_Linux/ros/point_cloud_converter-hydro-devel/build/devel/lib/point_cloud_converter/point_cloud_converter_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/point_cloud_converter/point_cloud_converter_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/point_cloud_converter/point_cloud_converter_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/point_cloud_converter/point_cloud_converter_node"
         OLD_RPATH "/opt/ros/melodic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/point_cloud_converter/point_cloud_converter_node")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/point_cloud_converter/launch" TYPE DIRECTORY FILES "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package1_Linux_v1_dhk/AD_Challenge_DEEV_Package1_Linux/ros/point_cloud_converter-hydro-devel/launch/")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package1_Linux_v1_dhk/AD_Challenge_DEEV_Package1_Linux/ros/point_cloud_converter-hydro-devel/build/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package1_Linux_v1_dhk/AD_Challenge_DEEV_Package1_Linux/ros/point_cloud_converter-hydro-devel/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")