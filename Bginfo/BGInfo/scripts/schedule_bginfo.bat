
SET TASK_NAME=BGInfo_Refresh
SET REFRESH_INTERVAL=1

REM Delete the task if a task with the same name already exists
schtasks.exe /delete /tn %TASK_NAME% /F

REM Create the task
schtasks.exe /create /tn %TASK_NAME% /tr "%PROGRAMFILES%\Winternals\Bginfo\run_bginfo.bat > %PROGRAMFILES%\Winternals\Bginfo\run_bginfo.log" /SC MINUTE /MO %REFRESH_INTERVAL% /ru "SYSTEM"

REM Run the task
ECHO Running the task for first time...
START /WAIT schtasks.exe /run /tn %TASK_NAME% 
ECHO Done.
