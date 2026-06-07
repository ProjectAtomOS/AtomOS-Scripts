@echo off
taskkill /F /IM "msedge.exe" >nul 2>&1
taskkill /F /IM "msedgewebview2.exe" >nul 2>&1
taskkill /F /IM "MicrosoftEdge.exe" >nul 2>&1
taskkill /F /IM "MicrosoftEdgeUpdate.exe" >nul 2>&1
taskkill /F /IM "MicrosoftEdgeElevationService.exe" >nul 2>&1
sc delete "edgeupdate" >nul 2>&1
sc delete "edgeupdatem" >nul 2>&1
sc delete "MicrosoftEdgeElevationService" >nul 2>&1
sc delete "MicrosoftEdgeUpdateService" >nul 2>&1
if exist "%ProgramFiles(x86)%\Microsoft\EdgeUpdate\MicrosoftEdgeUpdate.exe" "%ProgramFiles(x86)%\Microsoft\EdgeUpdate\MicrosoftEdgeUpdate.exe" /uninstall /system-level /force-uninstall >nul 2>&1
powershell -NoProfile -NonInteractive -Command "Get-AppxPackage 'Microsoft.MicrosoftEdge.Stable*' -AllUsers | Remove-AppxPackage -AllUsers" >nul 2>&1
powershell -NoProfile -NonInteractive -Command "Get-AppxPackage 'Microsoft.MicrosoftEdgeDevToolsClient*' -AllUsers | Remove-AppxPackage -AllUsers" >nul 2>&1
powershell -NoProfile -NonInteractive -Command "Get-AppxPackage 'Microsoft.Edge*' -AllUsers | Remove-AppxPackage -AllUsers" >nul 2>&1
powershell -NoProfile -NonInteractive -Command "Get-AppxPackage 'MicrosoftEdge*' -AllUsers | Remove-AppxPackage -AllUsers" >nul 2>&1
powershell -NoProfile -NonInteractive -Command "Get-AppxPackage 'Microsoft.MicrosoftEdge.Beta*' -AllUsers | Remove-AppxPackage -AllUsers" >nul 2>&1
powershell -NoProfile -NonInteractive -Command "Get-AppxPackage 'Microsoft.MicrosoftEdge.Canary*' -AllUsers | Remove-AppxPackage -AllUsers" >nul 2>&1
powershell -NoProfile -NonInteractive -Command "Get-AppxPackage 'Microsoft.MicrosoftEdgeDev*' -AllUsers | Remove-AppxPackage -AllUsers" >nul 2>&1
if exist "%SystemDrive%\Users\Public\Desktop\Microsoft Edge.lnk" del /f /q "%SystemDrive%\Users\Public\Desktop\Microsoft Edge.lnk" >nul 2>&1
if exist "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Microsoft Edge.lnk" del /f /q "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Microsoft Edge.lnk" >nul 2>&1
if exist "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Microsoft Edge.lnk" del /f /q "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Microsoft Edge.lnk" >nul 2>&1
if exist "%SystemRoot%\system32\MicrosoftEdgeBCHost.exe" del /f /q "%SystemRoot%\system32\MicrosoftEdgeBCHost.exe" >nul 2>&1
if exist "%SystemRoot%\system32\MicrosoftEdgeCP.exe" del /f /q "%SystemRoot%\system32\MicrosoftEdgeCP.exe" >nul 2>&1
if exist "%SystemRoot%\system32\MicrosoftEdgeDevTools.exe" del /f /q "%SystemRoot%\system32\MicrosoftEdgeDevTools.exe" >nul 2>&1
if exist "%SystemRoot%\system32\MicrosoftEdgeSH.exe" del /f /q "%SystemRoot%\system32\MicrosoftEdgeSH.exe" >nul 2>&1
if exist "%SystemRoot%\system32\ie_storagetrusted.exe" del /f /q "%SystemRoot%\system32\ie_storagetrusted.exe" >nul 2>&1
if exist "%SystemRoot%\system32\MicrosoftEdgeCPBroker.exe" del /f /q "%SystemRoot%\system32\MicrosoftEdgeCPBroker.exe" >nul 2>&1
if exist "%ProgramFiles(x86)%\Microsoft\Edge" rd /s /q "%ProgramFiles(x86)%\Microsoft\Edge" >nul 2>&1
if exist "%ProgramFiles(x86)%\Microsoft\EdgeUpdate" rd /s /q "%ProgramFiles(x86)%\Microsoft\EdgeUpdate" >nul 2>&1
if exist "%ProgramFiles(x86)%\Microsoft\EdgeCore" rd /s /q "%ProgramFiles(x86)%\Microsoft\EdgeCore" >nul 2>&1
if exist "%ProgramFiles%\Microsoft\Edge" rd /s /q "%ProgramFiles%\Microsoft\Edge" >nul 2>&1
if exist "%ProgramFiles%\Microsoft\EdgeUpdate" rd /s /q "%ProgramFiles%\Microsoft\EdgeUpdate" >nul 2>&1
if exist "%ProgramFiles%\Microsoft\EdgeCore" rd /s /q "%ProgramFiles%\Microsoft\EdgeCore" >nul 2>&1
if exist "%LOCALAPPDATA%\Microsoft\Edge" rd /s /q "%LOCALAPPDATA%\Microsoft\Edge" >nul 2>&1
if exist "%LOCALAPPDATA%\Microsoft\EdgeUpdate" rd /s /q "%LOCALAPPDATA%\Microsoft\EdgeUpdate" >nul 2>&1
if exist "%LOCALAPPDATA%\Microsoft\EdgeWebView" rd /s /q "%LOCALAPPDATA%\Microsoft\EdgeWebView" >nul 2>&1
if exist "%LOCALAPPDATA%\Microsoft\EdgeCrashReports" rd /s /q "%LOCALAPPDATA%\Microsoft\EdgeCrashReports" >nul 2>&1
if exist "%APPDATA%\Microsoft\Edge" rd /s /q "%APPDATA%\Microsoft\Edge" >nul 2>&1
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft Edge" /f >nul 2>&1
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft Edge Update" /f >nul 2>&1
reg delete "HKLM\SOFTWARE\Microsoft\Edge" /f >nul 2>&1
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Edge" /f >nul 2>&1
reg delete "HKCR\MSEdgePDF" /f >nul 2>&1
reg delete "HKCR\MSEdgeMHT" /f >nul 2>&1
reg delete "HKLM\SOFTWARE\Clients\StartMenuInternet\Microsoft Edge" /f >nul 2>&1
reg delete "HKLM\SOFTWARE\RegisteredApplications" /v "Microsoft Edge" /f >nul 2>&1
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\msedge.exe" /f >nul 2>&1
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msedge.exe" /f >nul 2>&1
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msedgewebview2.exe" /f >nul 2>&1
reg add "HKLM\Software\Policies\Microsoft\EdgeUpdate" /v "InstallDefault" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\Software\Policies\Microsoft\EdgeUpdate" /v "UpdateDefault" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\Software\Policies\Microsoft\EdgeUpdate" /v "CreateDesktopShortcutDefault" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\EdgeUpdate" /v "DoNotUpdateToEdgeWithChromium" /t REG_DWORD /d "1" /f >nul 2>&1
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\AppExecutionAlias\msedge" /v "AppExecutionAlias" /f >nul 2>&1
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\AppExecutionAlias\msedgebeta" /v "AppExecutionAlias" /f >nul 2>&1
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\AppExecutionAlias\msedgecanary" /v "AppExecutionAlias" /f >nul 2>&1
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\AppExecutionAlias\msedgewebview" /v "AppExecutionAlias" /f >nul 2>&1
schtasks /Delete /TN "\Microsoft\EdgeUpdate\*" /F >nul 2>&1
powershell -NoProfile -NonInteractive -Command "Get-ScheduledTask | Where-Object { $_.TaskName -like '*MicrosoftEdge*' -or $_.TaskName -like '*EdgeUpdate*' -or $_.TaskPath -like '*MicrosoftEdge*' } | ForEach-Object { Unregister-ScheduledTask -TaskName $_.TaskName -Confirm:$false -ErrorAction SilentlyContinue }" >nul 2>&1
if exist "%ProgramFiles(x86)%\Microsoft\EdgeWebView\Installer\MicrosoftEdgeWebView2RuntimeInstaller.exe" "%ProgramFiles(x86)%\Microsoft\EdgeWebView\Installer\MicrosoftEdgeWebView2RuntimeInstaller.exe" --uninstall --system-level --force-uninstall >nul 2>&1
reg delete "HKLM\SOFTWARE\Classes\microsoft-edge" /f >nul 2>&1
reg delete "HKLM\SOFTWARE\Classes\MSEdgeHTM" /f >nul 2>&1
reg delete "HKCR\microsoft-edge" /f >nul 2>&1