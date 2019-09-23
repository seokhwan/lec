call "clean_cl.bat"

set cur_dir=%cd%
cd ..
if not exist "build_cl" mkdir build_cl
cd build_cl

call "C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\VC\Auxiliary\Build\vcvars64.bat"

cl /Fa /Od ..\src\hello_world.c ..\src\sum.c

hello_world.exe

cd %cur_dir%