@echo off
set BUILD_TYPE=Release
if not exist build mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=%BUILD_TYPE% && cmake --build . --config %BUILD_TYPE%
copy /Y %BUILD_TYPE%\peinfo.exe ..\peinfo.exe
cd .. & rmdir /s /q build