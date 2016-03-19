::@echo off

SET TASK_NAME=BGInfo_Refresh

ECHO Remove BGInfo Scheduler Task.

REM Delete the task if a task with the same name already exists
schtasks.exe /delete /tn %TASK_NAME% /F

ECHO Done.
pause