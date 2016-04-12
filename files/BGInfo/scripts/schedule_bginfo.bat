@echo off

SET BGINFO_PATH=C:\Program Files (x86)\Winternals\BGInfo
SET TASK_NAME=BGInfo_Refresh
SET REFRESH_INTERVAL=1

ECHO Add BGInfo Scheduler Task.

ECHO Delete the task if a task with the same name already exists
schtasks.exe /delete /tn %TASK_NAME% /F

ECHO Create the task
schtasks.exe /create /tn %TASK_NAME% /xml "%BGINFO_PATH%\scripts\%TASK_NAME%.xml"

REM Run the task
ECHO Running the task for first time...
START /WAIT schtasks.exe /run /tn %TASK_NAME%

ECHO Done.
REM pause