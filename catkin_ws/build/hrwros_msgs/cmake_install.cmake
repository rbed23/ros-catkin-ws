# Install script for directory: /mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/src/hrwros/hrwros_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/install")
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
   "/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/install" TYPE PROGRAM FILES "/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/build/hrwros_msgs/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/install" TYPE PROGRAM FILES "/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/build/hrwros_msgs/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/install/setup.bash;/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/install" TYPE FILE FILES
    "/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/build/hrwros_msgs/catkin_generated/installspace/setup.bash"
    "/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/build/hrwros_msgs/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/install/setup.sh;/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/install" TYPE FILE FILES
    "/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/build/hrwros_msgs/catkin_generated/installspace/setup.sh"
    "/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/build/hrwros_msgs/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/install/setup.zsh;/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/install" TYPE FILE FILES
    "/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/build/hrwros_msgs/catkin_generated/installspace/setup.zsh"
    "/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/build/hrwros_msgs/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/install" TYPE FILE FILES "/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/build/hrwros_msgs/catkin_generated/installspace/.rosinstall")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hrwros_msgs/msg" TYPE FILE FILES "/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/src/hrwros/hrwros_msgs/msg/SensorInformation.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hrwros_msgs/srv" TYPE FILE FILES "/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/src/hrwros/hrwros_msgs/srv/meters_2_feet.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hrwros_msgs/cmake" TYPE FILE FILES "/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/build/hrwros_msgs/catkin_generated/installspace/hrwros_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/devel/.private/hrwros_msgs/include/hrwros_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/devel/.private/hrwros_msgs/share/roseus/ros/hrwros_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/devel/.private/hrwros_msgs/share/common-lisp/ros/hrwros_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/devel/.private/hrwros_msgs/share/gennodejs/ros/hrwros_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/home/rbednar/.local/share/virtualenvs/ros-edx-example-TNbRsaha/bin/python3" -m compileall "/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/devel/.private/hrwros_msgs/lib/python3/dist-packages/hrwros_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/devel/.private/hrwros_msgs/lib/python3/dist-packages/hrwros_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/build/hrwros_msgs/catkin_generated/installspace/hrwros_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hrwros_msgs/cmake" TYPE FILE FILES "/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/build/hrwros_msgs/catkin_generated/installspace/hrwros_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hrwros_msgs/cmake" TYPE FILE FILES
    "/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/build/hrwros_msgs/catkin_generated/installspace/hrwros_msgsConfig.cmake"
    "/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/build/hrwros_msgs/catkin_generated/installspace/hrwros_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hrwros_msgs" TYPE FILE FILES "/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/src/hrwros/hrwros_msgs/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/build/hrwros_msgs/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/mnt/c/Users/Ryan/Desktop/cli-git-folder/ros/ros-edx-example/catkin_ws/build/hrwros_msgs/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
