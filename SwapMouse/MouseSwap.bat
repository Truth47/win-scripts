@echo off
title SwapMouseButtons

echo Choose:
echo [A] Set primary button as right click
echo [B] Set primary button as left click
echo.

:choice
SET /P C=[A,B]?
for %%? in (A) do if /I "%C%"=="%%?" goto A
for %%? in (B) do if /I "%C%"=="%%?" goto B
goto choice
:A
@echo off
reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /v SwapMouseButtons /t REG_SZ /d 1 /f
echo "The right click is now the primary button"

pause
goto end

:B
@ECHO OFF
reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /v SwapMouseButtons /t REG_SZ /d 0 /f
echo "The left click is now the primary button"

pause
goto end

:end

Script END!