@echo off

mkdir build_msvc_x86
cd build_msvc_x86
cmake -G"Visual Studio 16 2019" -A Win32 ..
timeout /t 10
