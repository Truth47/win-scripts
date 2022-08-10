@echo off
title Touch Press&Hold

goto check_Permissions

:check_Permissions
    echo Verifico privilegi di Amministratore...
    net session >nul 2>&1
    if %errorLevel% == 0 (
        echo Successo: Amministratore confermato.
    ) else (
        echo Fallimento: Rilancia con privilegi di amministratore.
		pause
		exit
    )
	
echo.

	
:config_touch_regkeys
	echo I'm about to disable the press and hold for right click on this user...
	
	reg add HKEY_CURRENT_USER\Software\Microsoft\Wisp\Touch /v TouchMode_hold /t REG_DWORD /d 0x0 /f
	reg add HKEY_CURRENT_USER\Software\Microsoft\Wisp\Pen\SysEventParameters /v HoldMode /t REG_DWORD /d 0x3 /f
	
	echo Completato
	echo.
	pause
	exit
	)
pause
exit
