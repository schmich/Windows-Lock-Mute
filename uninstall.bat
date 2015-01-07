@echo off

set /P ANSWER="Uninstall Windows-Lock-Mute tasks (y/n)? "

if /i {%ANSWER%}=={y} goto :uninstall
echo Exiting.
exit /b 1

:uninstall
schtasks /delete /f /tn Windows-Lock-Mute-Lock
schtasks /delete /f /tn Windows-Lock-Mute-Unlock
