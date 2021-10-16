@echo off
@title restarter -- by Zjarany
cls
color 0a
echo ********************************************************************************
echo *******************  FiveM Server auto start -- by Zjarany  ********************
echo ********************************************************************************
:loop
pushd
tasklist /nh /fi "FXServer.exe" | find /i "FXServer.exe" > nul ||(start FXServer.exe +exec server.cfg)
goto loop