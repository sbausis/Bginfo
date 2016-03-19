@echo off

SET BGINFO_PATH=C:\Program Files (x86)\Winternals\BGInfo

REM Provide a Template
copy /y "%BGINFO_PATH%\templates\server_template.bgi" "%BGINFO_PATH%\templates\current_template.bgi"

REM Updating Bginfo...
"%BGINFO_PATH%\Bginfo.exe" "%BGINFO_PATH%\templates\current_template.bgi" /timer:0 /nolicprompt /silent

::REM Updating Desktop...
::RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters