#!/usr/bin/bash

# This script bootstraps the Dear ImGui Android+SDL2 project
#   - It pulls down the latest SDL2 from the web and then copies in the necessary files

# Learning Resources: 
# https://wiki.libsdl.org/Android
# https://hg.libsdl.org/SDL/file/default/docs/README-android.md

# Java package name: "org.libdearimgui.android"

# TODO list:
# Download Android SDK (26+) and export path so we can use 'tools', 'platform-tools'
# Download Android NDK (r15c+) and export path so we can use 'ndk-build'

DIR_NAME="android_sdl2_example"
SDL2_LATEST='https://www.libsdl.org/release/SDL2-2.0.9.tar.gz'

# Example commands for setting up 'Dear ImGui' Android project
wget $SDL2_LATEST && tar xzf SDL2-2.0.9.tar.gz
cp -rn ./SDL2-2.0.9/android-project/* ./$DIR_NAME
cd $DIR_NAME/app/jni/src
ln -s ../../../SDL2-2.0.9 ../SDL

# Build and Run commands
# ./gradlew installDebug

# adb commands:
#  - adb devices, adb logcat