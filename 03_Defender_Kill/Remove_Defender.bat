@echo off
taskkill /F /IM "NisSrv.exe" >nul 2>&1
taskkill /F /IM "SecurityHealthHost.exe" >nul 2>&1
taskkill /F /IM "SecurityHealthService.exe" >nul 2>&1
taskkill /F /IM "SecurityHealthSystray.exe" >nul 2>&1
taskkill /F /IM "MsMpEng.exe" >nul 2>&1
taskkill /F /IM "smartscreen.exe" >nul 2>&1
sc delete "WinDefend" >nul 2>&1
sc delete "Sense" >nul 2>&1
sc delete "WdNisSvc" >nul 2>&1
sc delete "SecurityHealthService" >nul 2>&1
sc delete "SgrmBroker" >nul 2>&1
sc delete "SgrmAgent" >nul 2>&1
sc delete "MsSecCore" >nul 2>&1
sc delete "webthreatdefusersvc" >nul 2>&1
sc delete "webthreatdefsvc" >nul 2>&1
sc delete "MDCoreSvc" >nul 2>&1
schtasks /Delete /TN "\Microsoft\Windows\Windows Defender\Windows Defender Cache Maintenance" /F >nul 2>&1
schtasks /Delete /TN "\Microsoft\Windows\Windows Defender\Windows Defender Cleanup" /F >nul 2>&1
schtasks /Delete /TN "\Microsoft\Windows\Windows Defender\Windows Defender Scheduled Scan" /F >nul 2>&1
schtasks /Delete /TN "\Microsoft\Windows\Windows Defender\Windows Defender Verification" /F >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableBehaviorMonitoring" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableScanOnRealtimeEnable" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Microsoft Antimalware\Real-Time Protection" /v "DisableOnAccessProtection" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Microsoft Antimalware\Real-Time Protection" /v "DisableScanOnRealtimeEnable" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "SmartScreenEnabled" /t REG_SZ /d "Off" /f >nul 2>&1
reg add "HKLM\Software\Policies\Microsoft\System" /v "EnableSmartScreen" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\SmartScreen" /v "EnableSmartScreen" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Edge" /v "SmartScreenEnabled" /t REG_SZ /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /v "Enabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CI\Config" /v "VulnerableDriverBlocklistEnable" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CI\Policy" /v "VerifiedAndReputablePolicyState" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows Defender" /v "PUAProtection" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderApiLogger" /v "Start" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderAuditLogger" /v "Start" /t REG_DWORD /d "0" /f >nul 2>&1
reg delete "HKLM\SOFTWARE\Classes\*\ShellEx\ContextMenuHandlers\EPP" /f >nul 2>&1
reg delete "HKLM\SOFTWARE\Classes\Drive\ShellEx\ContextMenuHandlers\EPP" /f >nul 2>&1
reg delete "HKLM\SOFTWARE\Classes\Directory\ShellEx\ContextMenuHandlers\EPP" /f >nul 2>&1
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "SecurityHealth" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WTDS\Components" /v "ServiceEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows Defender\Spynet" /v "SubmitSamplesConsent" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows Defender\Spynet" /v "SpyNetReporting" /t REG_DWORD /d "0" /f >nul 2>&1
powershell -NoProfile -NonInteractive -Command "Get-AppxPackage '*SecHealthUI*' -AllUsers | Remove-AppxPackage -AllUsers" >nul 2>&1
powershell -NoProfile -NonInteractive -Command "Get-AppxPackage 'Microsoft.Windows.Apprep.ChxApp*' -AllUsers | Remove-AppxPackage -AllUsers" >nul 2>&1
DISM.exe /Online /Disable-Feature /FeatureName:"Windows-Defender-Default-Definitions" /NoRestart >nul 2>&1
if exist "%windir%\System32\SecurityHealthSystray.exe" (del /f /q "%windir%\System32\SecurityHealthSystray.exe" >nul 2>&1)
if exist "%windir%\System32\SecurityHealthService.exe" (del /f /q "%windir%\System32\SecurityHealthService.exe" >nul 2>&1)
if exist "%windir%\System32\SecurityHealthAgent.dll" (del /f /q "%windir%\System32\SecurityHealthAgent.dll" >nul 2>&1)
if exist "%windir%\System32\SecurityHealthHost.exe" (del /f /q "%windir%\System32\SecurityHealthHost.exe" >nul 2>&1)
if exist "%windir%\System32\SecurityHealthCore.dll" (del /f /q "%windir%\System32\SecurityHealthCore.dll" >nul 2>&1)
if exist "%windir%\System32\SecurityHealthProxyStub.dll" (del /f /q "%windir%\System32\SecurityHealthProxyStub.dll" >nul 2>&1)
if exist "%windir%\System32\SecurityHealthUdk.dll" (del /f /q "%windir%\System32\SecurityHealthUdk.dll" >nul 2>&1)
if exist "%windir%\System32\drivers\WdNisDrv.sys" (del /f /q "%windir%\System32\drivers\WdNisDrv.sys" >nul 2>&1)
sc delete "WdFilter" >nul 2>&1
sc delete "WdBoot" >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.Windows.SecHealthUI_cw5n1h2txyewy" /f >nul 2>&1
