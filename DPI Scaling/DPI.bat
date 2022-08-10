REG ADD "HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics" /v AppliedDPI /t REG_DWORD /d 0x00000060 /f
REG ADD "HKCU\Control Panel\Desktop" /v DpiScalingVer /t REG_DWORD /d 0x00001018 /f
REG ADD "HKCU\Control Panel\Desktop" /v Win8DpiScaling /t REG_DWORD /d 0x00000001 /f
REG ADD "HKCU\Control Panel\Desktop" /v LogPixels /t REG_DWORD /d 0x00000060 /f