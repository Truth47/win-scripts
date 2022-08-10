@echo OFF

DEL /Q /S "%USERPROFILE%\Local Settings\Temp\*.*"
DEL /F /Q /S "%USERPROFILE%\Local Settings\Temporary Internet Files\*.*" >NUL
DEL /F /Q /S "%WinDir%\Temp\*.*"

pause