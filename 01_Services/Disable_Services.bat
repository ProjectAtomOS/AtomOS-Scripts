@echo off
sc config "DiagTrack" start= disabled >nul 2>&1
sc stop "DiagTrack" >nul 2>&1
sc config "dmwappushservice" start= disabled >nul 2>&1
sc stop "dmwappushservice" >nul 2>&1
sc config "diagnosticshub.standardcollector.service" start= disabled >nul 2>&1
sc stop "diagnosticshub.standardcollector.service" >nul 2>&1
sc config "diagsvc" start= disabled >nul 2>&1
sc stop "diagsvc" >nul 2>&1
sc config "WdiServiceHost" start= disabled >nul 2>&1
sc stop "WdiServiceHost" >nul 2>&1
sc config "WdiSystemHost" start= disabled >nul 2>&1
sc stop "WdiSystemHost" >nul 2>&1
sc config "WerSvc" start= disabled >nul 2>&1
sc stop "WerSvc" >nul 2>&1
sc config "wercplsupport" start= disabled >nul 2>&1
sc stop "wercplsupport" >nul 2>&1
sc config "PcaSvc" start= disabled >nul 2>&1
sc stop "PcaSvc" >nul 2>&1
sc config "Telemetry" start= disabled >nul 2>&1
sc stop "Telemetry" >nul 2>&1
sc config "pla" start= disabled >nul 2>&1
sc stop "pla" >nul 2>&1
sc config "wmiApSrv" start= disabled >nul 2>&1
sc stop "wmiApSrv" >nul 2>&1
sc config "Wecsvc" start= disabled >nul 2>&1
sc stop "Wecsvc" >nul 2>&1
sc config "DPS" start= disabled >nul 2>&1
sc stop "DPS" >nul 2>&1
sc config "TroubleshootingSvc" start= disabled >nul 2>&1
sc stop "TroubleshootingSvc" >nul 2>&1
sc config "OneSyncSvc" start= disabled >nul 2>&1
sc stop "OneSyncSvc" >nul 2>&1
sc config "WpnService" start= disabled >nul 2>&1
sc stop "WpnService" >nul 2>&1
sc config "WpnUserService" start= disabled >nul 2>&1
sc stop "WpnUserService" >nul 2>&1
sc config "DataUsageSvc" start= disabled >nul 2>&1
sc stop "DataUsageSvc" >nul 2>&1
sc config "Dssvc" start= disabled >nul 2>&1
sc stop "Dssvc" >nul 2>&1
sc config "DsSvc" start= disabled >nul 2>&1
sc stop "DsSvc" >nul 2>&1
sc config "CloudIdSvc" start= disabled >nul 2>&1
sc stop "CloudIdSvc" >nul 2>&1
sc config "CloudBackupRestoreSvc" start= disabled >nul 2>&1
sc stop "CloudBackupRestoreSvc" >nul 2>&1
sc config "cbdhsvc" start= disabled >nul 2>&1
sc stop "cbdhsvc" >nul 2>&1
sc config "XblAuthManager" start= disabled >nul 2>&1
sc stop "XblAuthManager" >nul 2>&1
sc config "XblGameSave" start= disabled >nul 2>&1
sc stop "XblGameSave" >nul 2>&1
sc config "XboxGipSvc" start= disabled >nul 2>&1
sc stop "XboxGipSvc" >nul 2>&1
sc config "XboxNetApiSvc" start= disabled >nul 2>&1
sc stop "XboxNetApiSvc" >nul 2>&1
sc config "BcastDVRUserService" start= disabled >nul 2>&1
sc stop "BcastDVRUserService" >nul 2>&1
sc config "WSearch" start= disabled >nul 2>&1
sc stop "WSearch" >nul 2>&1
sc config "SysMain" start= disabled >nul 2>&1
sc stop "SysMain" >nul 2>&1
sc config "Themes" start= demand >nul 2>&1
sc config "TrkWks" start= disabled >nul 2>&1
sc stop "TrkWks" >nul 2>&1
sc config "WMPNetworkSvc" start= disabled >nul 2>&1
sc stop "WMPNetworkSvc" >nul 2>&1
sc config "VacSvc" start= disabled >nul 2>&1
sc stop "VacSvc" >nul 2>&1
sc config "UserDataSvc" start= disabled >nul 2>&1
sc stop "UserDataSvc" >nul 2>&1
sc config "UnistoreSvc" start= disabled >nul 2>&1
sc stop "UnistoreSvc" >nul 2>&1
sc config "PimIndexMaintenanceSvc" start= disabled >nul 2>&1
sc stop "PimIndexMaintenanceSvc" >nul 2>&1
sc config "spectrum" start= disabled >nul 2>&1
sc stop "spectrum" >nul 2>&1
sc config "SpatialGraphFilter" start= disabled >nul 2>&1
sc stop "SpatialGraphFilter" >nul 2>&1
sc config "SharedRealitySvc" start= disabled >nul 2>&1
sc stop "SharedRealitySvc" >nul 2>&1
sc config "SharedAccess" start= disabled >nul 2>&1
sc stop "SharedAccess" >nul 2>&1
sc config "SgrmBroker" start= disabled >nul 2>&1
sc stop "SgrmBroker" >nul 2>&1
sc config "SgrmAgent" start= disabled >nul 2>&1
sc stop "SgrmAgent" >nul 2>&1
sc config "perceptionsimulation" start= disabled >nul 2>&1
sc stop "perceptionsimulation" >nul 2>&1
sc config "MixedRealityOpenXRSvc" start= disabled >nul 2>&1
sc stop "MixedRealityOpenXRSvc" >nul 2>&1
sc config "SensrSvc" start= disabled >nul 2>&1
sc stop "SensrSvc" >nul 2>&1
sc config "SensorService" start= disabled >nul 2>&1
sc stop "SensorService" >nul 2>&1
sc config "SensorDataService" start= disabled >nul 2>&1
sc stop "SensorDataService" >nul 2>&1
sc config "svsvc" start= disabled >nul 2>&1
sc stop "svsvc" >nul 2>&1
sc config "embeddedmode" start= disabled >nul 2>&1
sc stop "embeddedmode" >nul 2>&1
sc config "WPDBusEnum" start= disabled >nul 2>&1
sc stop "WPDBusEnum" >nul 2>&1
sc config "wisvc" start= disabled >nul 2>&1
sc stop "wisvc" >nul 2>&1
sc config "WpcMonSvc" start= disabled >nul 2>&1
sc stop "WpcMonSvc" >nul 2>&1
sc config "MapsBroker" start= disabled >nul 2>&1
sc stop "MapsBroker" >nul 2>&1
sc config "RetailDemo" start= disabled >nul 2>&1
sc stop "RetailDemo" >nul 2>&1
sc config "SessionEnv" start= disabled >nul 2>&1
sc stop "SessionEnv" >nul 2>&1
sc config "TermService" start= disabled >nul 2>&1
sc stop "TermService" >nul 2>&1
sc config "UmRdpService" start= disabled >nul 2>&1
sc stop "UmRdpService" >nul 2>&1
sc config "LicenseManager" start= demand >nul 2>&1
sc config "AutoTimeUpdater" start= disabled >nul 2>&1
sc stop "AutoTimeUpdater" >nul 2>&1
sc config "tzautoupdate" start= disabled >nul 2>&1
sc stop "tzautoupdate" >nul 2>&1
sc config "W32Time" start= disabled >nul 2>&1
sc stop "W32Time" >nul 2>&1
sc config "autotimesvc" start= disabled >nul 2>&1
sc stop "autotimesvc" >nul 2>&1
sc config "MessagingService" start= disabled >nul 2>&1
sc stop "MessagingService" >nul 2>&1
sc config "Semgrsvc" start= disabled >nul 2>&1
sc stop "Semgrsvc" >nul 2>&1
sc config "WarpJITSvc" start= disabled >nul 2>&1
sc stop "WarpJITSvc" >nul 2>&1
sc config "McpManagementService" start= disabled >nul 2>&1
sc stop "McpManagementService" >nul 2>&1
sc config "Spooler" start= disabled >nul 2>&1
sc stop "Spooler" >nul 2>&1
sc config "printworkflowusersvc" start= disabled >nul 2>&1
sc stop "printworkflowusersvc" >nul 2>&1
sc config "stisvc" start= disabled >nul 2>&1
sc stop "stisvc" >nul 2>&1
sc config "PrintNotify" start= disabled >nul 2>&1
sc stop "PrintNotify" >nul 2>&1
sc config "usbprint" start= disabled >nul 2>&1
sc stop "usbprint" >nul 2>&1
sc config "PrintScanBrokerService" start= disabled >nul 2>&1
sc stop "PrintScanBrokerService" >nul 2>&1
sc config "PrintDeviceConfigurationService" start= disabled >nul 2>&1
sc stop "PrintDeviceConfigurationService" >nul 2>&1
sc config "LPTEnum" start= disabled >nul 2>&1
sc stop "LPTEnum" >nul 2>&1
sc config "Parallel" start= disabled >nul 2>&1
sc stop "Parallel" >nul 2>&1
sc config "BluetoothUserService" start= disabled >nul 2>&1
sc stop "BluetoothUserService" >nul 2>&1
sc config "BthAvctpSvc" start= disabled >nul 2>&1
sc stop "BthAvctpSvc" >nul 2>&1
sc config "BthEnum" start= disabled >nul 2>&1
sc stop "BthEnum" >nul 2>&1
sc config "BthHFEnum" start= disabled >nul 2>&1
sc stop "BthHFEnum" >nul 2>&1
sc config "BthLEEnum" start= disabled >nul 2>&1
sc stop "BthLEEnum" >nul 2>&1
sc config "BthA2dp" start= disabled >nul 2>&1
sc stop "BthA2dp" >nul 2>&1
sc config "BTHMODEM" start= disabled >nul 2>&1
sc stop "BTHMODEM" >nul 2>&1
sc config "Microsoft_Bluetooth_AvrcpTransport" start= disabled >nul 2>&1
sc stop "Microsoft_Bluetooth_AvrcpTransport" >nul 2>&1
sc config "RFCOMM" start= disabled >nul 2>&1
sc stop "RFCOMM" >nul 2>&1
sc config "bthserv" start= disabled >nul 2>&1
sc stop "bthserv" >nul 2>&1
sc config "BTAGService" start= disabled >nul 2>&1
sc stop "BTAGService" >nul 2>&1
sc config "BluetoothAudioSvc" start= disabled >nul 2>&1
sc stop "BluetoothAudioSvc" >nul 2>&1
sc config "BthMini" start= disabled >nul 2>&1
sc stop "BthMini" >nul 2>&1
sc config "BthRadUsb" start= disabled >nul 2>&1
sc stop "BthRadUsb" >nul 2>&1
sc config "Microsoft_Bluetooth_AvctpTransport" start= disabled >nul 2>&1
sc stop "Microsoft_Bluetooth_AvctpTransport" >nul 2>&1
sc config "SSDPSRV" start= disabled >nul 2>&1
sc stop "SSDPSRV" >nul 2>&1
sc config "SmsRouter" start= disabled >nul 2>&1
sc stop "SmsRouter" >nul 2>&1
sc config "IpxlatCfgSvc" start= disabled >nul 2>&1
sc stop "IpxlatCfgSvc" >nul 2>&1
sc config "NetTcpPortSharing" start= disabled >nul 2>&1
sc stop "NetTcpPortSharing" >nul 2>&1
sc config "KtmRm" start= disabled >nul 2>&1
sc stop "KtmRm" >nul 2>&1
sc config "MSDTC" start= disabled >nul 2>&1
sc stop "MSDTC" >nul 2>&1
sc config "RmSvc" start= disabled >nul 2>&1
sc stop "RmSvc" >nul 2>&1
sc config "LanmanWorkstation" start= demand >nul 2>&1
sc config "LanmanServer" start= demand >nul 2>&1
sc config "lmhosts" start= disabled >nul 2>&1
sc stop "lmhosts" >nul 2>&1
sc config "NdisWan" start= demand >nul 2>&1
sc config "PhoneSvc" start= disabled >nul 2>&1
sc stop "PhoneSvc" >nul 2>&1
sc config "TapiSrv" start= disabled >nul 2>&1
sc stop "TapiSrv" >nul 2>&1
sc config "lfsvc" start= disabled >nul 2>&1
sc stop "lfsvc" >nul 2>&1
sc config "SCardSvr" start= disabled >nul 2>&1
sc stop "SCardSvr" >nul 2>&1
sc config "ScDeviceEnum" start= disabled >nul 2>&1
sc stop "ScDeviceEnum" >nul 2>&1
sc config "SCPolicySvc" start= disabled >nul 2>&1
sc stop "SCPolicySvc" >nul 2>&1
sc config "scfilter" start= disabled >nul 2>&1
sc stop "scfilter" >nul 2>&1
sc config "SEMgrSvc" start= disabled >nul 2>&1
sc stop "SEMgrSvc" >nul 2>&1
sc config "AppVClient" start= disabled >nul 2>&1
sc stop "AppVClient" >nul 2>&1
sc config "AJRouter" start= disabled >nul 2>&1
sc stop "AJRouter" >nul 2>&1
sc config "AppIDSvc" start= demand >nul 2>&1
sc config "DsmSvc" start= disabled >nul 2>&1
sc stop "DsmSvc" >nul 2>&1
sc config "DialogBlockingService" start= disabled >nul 2>&1
sc stop "DialogBlockingService" >nul 2>&1
sc config "MsKeyboardFilter" start= disabled >nul 2>&1
sc stop "MsKeyboardFilter" >nul 2>&1
sc config "icssvc" start= disabled >nul 2>&1
sc stop "icssvc" >nul 2>&1
sc config "ShellHWDetection" start= demand >nul 2>&1
sc config "defragsvc" start= disabled >nul 2>&1
sc stop "defragsvc" >nul 2>&1
sc config "FontCache" start= demand >nul 2>&1
sc config "MSiSCSI" start= disabled >nul 2>&1
sc stop "MSiSCSI" >nul 2>&1
sc config "PenService" start= disabled >nul 2>&1
sc stop "PenService" >nul 2>&1
sc config "P9RdrService" start= disabled >nul 2>&1
sc stop "P9RdrService" >nul 2>&1
sc config "PNRPsvc" start= disabled >nul 2>&1
sc stop "PNRPsvc" >nul 2>&1
sc config "p2psvc" start= disabled >nul 2>&1
sc stop "p2psvc" >nul 2>&1
sc config "p2pimsvc" start= disabled >nul 2>&1
sc stop "p2pimsvc" >nul 2>&1
sc config "PeerDistSvc" start= disabled >nul 2>&1
sc stop "PeerDistSvc" >nul 2>&1
sc config "RasAuto" start= disabled >nul 2>&1
sc stop "RasAuto" >nul 2>&1
sc config "RasAcd" start= disabled >nul 2>&1
sc stop "RasAcd" >nul 2>&1
sc config "terminpt" start= disabled >nul 2>&1
sc stop "terminpt" >nul 2>&1
sc config "TsUsbGD" start= disabled >nul 2>&1
sc stop "TsUsbGD" >nul 2>&1
sc config "VSS" start= disabled >nul 2>&1
sc stop "VSS" >nul 2>&1
sc config "WaaSMedicSvc" start= disabled >nul 2>&1
sc stop "WaaSMedicSvc" >nul 2>&1
sc config "WalletService" start= disabled >nul 2>&1
sc stop "WalletService" >nul 2>&1
sc config "wbengine" start= disabled >nul 2>&1
sc stop "wbengine" >nul 2>&1
sc config "WbioSrvc" start= disabled >nul 2>&1
sc stop "WbioSrvc" >nul 2>&1
sc config "WEPHOSTSVC" start= disabled >nul 2>&1
sc stop "WEPHOSTSVC" >nul 2>&1
sc config "wdiservicehost" start= disabled >nul 2>&1
sc stop "wdiservicehost" >nul 2>&1
sc config "wdisystemhost" start= disabled >nul 2>&1
sc stop "wdisystemhost" >nul 2>&1
sc config "DisplayEnhancementService" start= disabled >nul 2>&1
sc stop "DisplayEnhancementService" >nul 2>&1
sc config "VaultSvc" start= demand >nul 2>&1
sc config "EventSystem" start= demand >nul 2>&1
sc config "GraphicsPerfSvc" start= disabled >nul 2>&1
sc stop "GraphicsPerfSvc" >nul 2>&1
sc config "AxInstSV" start= disabled >nul 2>&1
sc stop "AxInstSV" >nul 2>&1
sc config "AarSvc" start= disabled >nul 2>&1
sc stop "AarSvc" >nul 2>&1
sc config "cloudidsvc" start= disabled >nul 2>&1
sc stop "cloudidsvc" >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ConsentPromptBehaviorAdmin" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "PromptOnSecureDesktop" /t REG_DWORD /d "0" /f >nul 2>&1
