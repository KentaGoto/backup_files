@echo off


SET SRC=D:
SET DST=E:bkup


CALL :backup \tool

exit

:backup
robocopy "%SRC%%*" "%DST%%*" /DCOPY:T /MIR /R:3 /W:5
exit /b
