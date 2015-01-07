@echo off

set /P ANSWER="Install Windows-Lock-Mute tasks (y/n)? "

if /i {%ANSWER%}=={y} goto :install
echo Exiting.
exit /b 1

:install
schtasks /create /xml %~dp0tasks\Windows-Lock-Mute-Lock.xml /tn Windows-Lock-Mute-Lock
schtasks /create /xml %~dp0tasks\Windows-Lock-Mute-Unlock.xml /tn Windows-Lock-Mute-Unlock
