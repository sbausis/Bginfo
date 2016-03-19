@echo off

SET BGINFO_PATH=C:\Program Files (x86)\Winternals\BGInfo

REM Updating Bginfo...
"%BGINFO_PATH%\Bginfo.exe" "%BGINFO_PATH%\templates\server_template.bgi" /timer:0 /nolicprompt /silent

::REM Updating Desktop...
::RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters