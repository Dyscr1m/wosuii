@echo off
title MultiTool - by IILL
chcp 65001 >nul
cd files
color a

:start
call :banner

:menu
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A
echo.
echo.
echo [38;2;255;255;0m        ╔═(1) '[0m  
echo [38;2;255;255;0m        ║[0m  
echo [38;2;255;255;0m        ╠══(2) pirate[0m  
echo [38;2;255;255;0m        ║[0m  
echo [38;2;255;255;0m        ╠═══(3) smile[0m  
echo [38;2;255;255;0m        ║[0m  
echo [38;2;255;255;0m        ╠═══(4) trojan[0m  
echo [38;2;255;255;0m        ║[0m  
echo [38;2;255;255;0m        ╠═══(5) RUIP[0m  
echo [38;2;255;255;0m        ║[0m
echo [38;2;255;255;0m        ╠═══(6) Create Batch File[0m  
echo [38;2;255;255;0m        ║[0m
echo [38;2;255;255;0m        ╚╦═══(7) Auto Clicker[0m  
echo [38;2;255;255;0m         ║[0m
echo [38;2;255;255;0m         ╠═══(8) PowerTools[0m  
echo [38;2;255;255;0m         ║[0m
echo [38;2;255;255;0m         ╠═══(9) TinyTask[0m  
echo [38;2;255;255;0m         ║[0m
set /p input=.%BS% [38;2;255;255;0m        ╚══════^>[0m  
if /I %input% EQU 1 start '.bat
if /I %input% EQU 2 start pirate.bat
if /I %input% EQU 3 start smile.bat
if /I %input% EQU 4 start trojan.bat
if /I %input% EQU 5 start RUIP.bat
if /I %input% EQU 6 start CreateBatch.bat
if /I %input% EQU 7 start "" C:\Users\1705387\Desktop\yes\Required\AutoClicker.exe"
if /I %input% EQU 8 start  "" C:\Users\1705387\Desktop\yes\Required\PowerToysUserSetup-0.84.1-x64.exe"
if /I %input% EQU 9 start  "" C:\Users\1705387\Desktop\yes\Required\tinytask.exe"
cls
goto start

:banner
echo.
echo.
echo                     [38;2;255;0;0m███╗   ███╗██╗   ██╗██╗  ████████╗██╗    ████████╗ ██████╗  ██████╗ ██╗[0m     
echo                     [38;2;255;51;0m████╗ ████║██║   ██║██║  ╚══██╔══╝██║    ╚══██╔══╝██╔═══██╗██╔═══██╗██║     [0m
echo                     [38;2;255;102;0m██╔████╔██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║    [0m 
echo                     [38;2;255;153;0m██║╚██╔╝██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║     [0m
echo                     [38;2;255;204;0m██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║       ██║   ╚██████╔╝╚██████╔╝███████╗[0m
echo                     [38;2;255;255;0m╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝[0m
echo.
