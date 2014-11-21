@echo off
cls

set DRIVE_LETTER=%1:
set path=%DRIVE_LETTER%\MinGW\bin;%DRIVE_LETTER%\MinGW\msys\1.0\bin;%DRIVE_LETTER%\mingw\gtkmm\bin;c:\Windows;c:\Windows\system32

make DRIVE_LETTER="%DRIVE_LETTER%"





