@echo off
msbuild /property:Configuration="Release MX" /property:Platform=x64 ".\glew-1.12.0\build\vc12\glew.sln"
copy ".\glew-1.12.0\lib\Release MX\x64\glew32mxs.lib" "..\Library\"
echo GLEW has been built successfully!
cd glfw-3.1.1
mkdir build
cd build
cmake  .. 
cd ..
cd ..
msbuild /property:Configuration="Release" /property:Platform=x64 ".\glfw-3.1.1\build\GLFW.sln"
copy ".\glfw-3.1.1\build\src\Release\glfw3.lib" "..\Library"
echo GLFW has been built successfully!
pause
