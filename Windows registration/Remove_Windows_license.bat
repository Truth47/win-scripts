@echo off

title Unlicensing tool

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

echo Attenzione, stai per rimuovere la licenza da questa installazione di windows.
echo una volta completata la procedura dovrai riavviare il pc.
echo Ti verrà richiesto di inserire la nuova licenza entro 15 giorni.
Echo.
set /p req= "Vuoi procedere? [S/N]"
Echo.
if "%req%" == "N" if "%req%" == "n" exit

if "%req%

rem slmgr /upk

rem slmgr /cpky

rem slmgr /rearm
