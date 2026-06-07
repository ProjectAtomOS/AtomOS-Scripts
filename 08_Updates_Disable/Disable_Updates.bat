@echo off
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update" /v "AUOptions" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update" /v "NoAutoUpdate" /t REG_DWORD /d "1" /f >nul 2>&1
sc config "wuauserv" start= disabled >nul 2>&1
sc config "UsoSvc" start= disabled >nul 2>&1
sc config "WaaSMedicSvc" start= disabled >nul 2>&1
sc config "BITS" start= disabled >nul 2>&1
schtasks /Delete /TN "\Microsoft\Windows\WindowsUpdate\Scheduled Start" /F >nul 2>&1
schtasks /Delete /TN "\Microsoft\Windows\WindowsUpdate\sih" /F >nul 2>&1
