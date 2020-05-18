cmake_minimum_required(VERSION 3.15)
cmake_policy(SET CMP0077 NEW)
set(CMAKE_CXX_STANDARD 17)
set_property(GLOBAL PROPERTY USE_FOLDERS ON)

project(public_sdk)

add_subdirectory(lua)
add_subdirectory(mbedtls)
add_subdirectory(tomcrypt)
add_subdirectory(zlib)
