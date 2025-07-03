@echo off
>nul 2>&1 fsutil dirty query %systemdrive% && (goto gotAdmin) || (goto UACPrompt)

:gotAdmin
cls
title Windows Edition Modifier

echo ============================================
echo        Select the edition to configure
echo ============================================
echo 1) Windows 10 Home
echo 2) Windows 10 Home Single Language
echo 3) Windows 10 Home N
echo 4) Windows 10 Pro
echo 5) Windows 10 Pro N
echo 6) Windows 10 Pro for Workstations
echo 7) Windows 10 Pro N for Workstations
echo 8) Windows 10 Pro Education
echo 9) Windows 10 Pro Education N
echo 10) Windows 10 Education
echo 11) Windows 10 Education N
echo 12) Windows 10 Enterprise
echo 13) Windows 10 Enterprise N
echo 14) Windows 10 Enterprise LTSC 2019
echo 15) Windows 10 Enterprise LTSC 2021
echo 16) Windows 10 Enterprise N LTSC 2021
echo 17) Windows 10 Enterprise LTSC 2024
echo 18) Windows 10 Enterprise N LTSC 2024
echo 19) Windows 10 SE
echo 20) Windows 10 SE N
echo 21) Windows 10 IoT Enterprise
echo 22) Windows 10 IoT Enterprise LTSC 2021
echo 23) Windows 10 IoT Enterprise LTSC 2024
echo 24) Windows 10 IoT Enterprise Subscription LTSC 2024
echo 25) Windows Server 2022 Standard
echo 26) Windows Server 2022 Datacenter
echo 27) Windows Server 2025 Standard
echo 28) Windows Server 2025 Datacenter
echo ============================================

set "choice="
set /p choice=Make your choice:

if "%choice%"=="1" goto setvarcore
if "%choice%"=="2" goto setvarcoresl
if "%choice%"=="3" goto setvarcoren
if "%choice%"=="4" goto setvarpro
if "%choice%"=="5" goto setvarpron
if "%choice%"=="6" goto setvarpfw
if "%choice%"=="7" goto setvarpfwn
if "%choice%"=="8" goto setvarproed
if "%choice%"=="9" goto setvarproedn
if "%choice%"=="10" goto setvared
if "%choice%"=="11" goto setvaredn
if "%choice%"=="12" goto setvarent
if "%choice%"=="13" goto setvarentn
if "%choice%"=="14" goto set_ltsc2019
if "%choice%"=="15" goto setvarltsc2021
if "%choice%"=="16" goto setvarltscn2021
if "%choice%"=="17" goto setvarltsc2024
if "%choice%"=="18" goto setvarltscn2024
if "%choice%"=="19" goto setvarcloud
if "%choice%"=="20" goto setvarcloudn
if "%choice%"=="21" goto setvariotent
if "%choice%"=="22" goto setvariotltsc2021
if "%choice%"=="23" goto setvariotltsc2024
if "%choice%"=="24" goto setvariotltscsub2024
if "%choice%"=="25" goto setvarserv22std
if "%choice%"=="26" goto setvarserv22data
if "%choice%"=="27" goto setvarserv25std
if "%choice%"=="28" goto setvarserv25data

:setvarcore
rem choice 1
set "UBR=4291"
set "EditionID=Core"
set "CurrentBuild=19045"
set "productName=Windows 10 Home"
set "relaseId=2009"
set "productkey=YTMG3-N6DKC-DKB77-7M9GH-8HVX7"
set "compositioneditionid=Core"
goto forceInstall

:setvarcoresl
rem choice 2
set "UBR=4291"
set "EditionID=CoreSingleLanguage"
set "CurrentBuild=19045"
set "productName=Windows 10 Home Single Language"
set "relaseId=2009"
set "productkey=BT79Q-G7N6G-PGBYW-4YWX6-6F4BT"
set "compositioneditionid=Core"
goto forceInstall

:setvarcoren
rem choice 3
set "UBR=4291"
set "EditionID=CoreN"
set "CurrentBuild=19045"
set "productName=Windows 10 Home N"
set "relaseId=2009"
set "productkey=4CPRK-NM3K3-X6XXQ-RXX86-WXCHW"
set "compositioneditionid=CoreN"
goto forceInstall

:setvarpro
rem choice 4
set "productkey=VK7JG-NPHTM-C97JM-9MPGT-3V66T"
set "productName=Windows 10 Pro"
set "EditionID=Professional"
set "compositioneditionid=Enterprise"
set "relaseId=22H2"
set "CurrentBuild=19045"
set "UBR=4291"
goto forceInstall

:setvarpron
rem choice 5
set "UBR=4291"
set "EditionID=ProfessionalN"
set "CurrentBuild=19045"
set "productName=Windows 10 Pro N"
set "relaseId=2009"
set "productkey=2B87N-8KFHP-DKV6R-Y2C8J-PKCKT"
set "compositioneditionid=EnterpriseN"
goto forceInstall

:setvarpfw
rem choice 6
set "UBR=4291"
set "EditionID=ProfessionalWorkstation"
set "CurrentBuild=19045"
set "productName=Windows 10 Pro for Workstations"
set "relaseId=2009"
set "productkey=DXG7C-N36C4-C4HTG-X4T3X-2YV77"
set "compositioneditionid=Enterprise"
goto forceInstall

:setvarpfwn
rem choice 7
set "UBR=4291"
set "EditionID=ProfessionalWorkstationN"
set "CurrentBuild=19045"
set "productName=Windows 10 Pro N for Workstations"
set "relaseId=2009"
set "productkey=WYPNQ-8C467-V2W6J-TX4WX-WT2RQ"
set "compositioneditionid=EnterpriseN"
goto forceInstall

:setvarproed
rem choice 8
set "UBR=4291"
set "EditionID=ProfessionalEducation"
set "CurrentBuild=19045"
set "productName=Windows 10 Pro Education"
set "relaseId=2009"
set "productkey=8PTT6-RNW4C-6V7J2-C2D3X-MHBPB"
set "compositioneditionid=Enterprise"
goto forceInstall

:setvarproedn
rem choice 9
set "UBR=4291"
set "EditionID=ProfessionalEducationN"
set "CurrentBuild=19045"
set "productName=Windows 10 Pro Education N"
set "relaseId=2009"
set "productkey=GJTYN-HDMQY-FRR76-HVGC7-QPF8P"
set "compositioneditionid=EnterpriseN"
goto forceInstall

:setvared
rem choice 10
set "UBR=4291"
set "EditionID=Education"
set "CurrentBuild=19045"
set "productName=Windows 10 Education"
set "relaseId=2009"
set "productkey=YNMGQ-8RYV3-4PGQ3-C8XTP-7CFBY"
set "compositioneditionid=Enterprise"
goto forceInstall

:setvaredn
rem choice 11
set "UBR=4291"
set "EditionID=EducationN"
set "CurrentBuild=19045"
set "productName=Windows 10 Education N"
set "relaseId=2009"
set "productkey=84NGF-MHBT6-FXBX8-QWJK7-DRR8H"
set "compositioneditionid=EnterpriseN"
goto forceInstall

:setvarent
rem choice 12
set "UBR=4291"
set "EditionID=Enterprise"
set "CurrentBuild=19045"
set "productName=Windows 10 Enterprise"
set "relaseId=2009"
set "productkey=XGVPP-NMH47-7TTHJ-W3FW7-8HV2C"
set "compositioneditionid=Enterprise"
goto forceInstall

:setvarentn
rem choice 13
set "productkey=3V6Q6-NQXCX-V8YXR-9QCYV-QPFCT"
set "productName=Windows 10 Enterprise N"
set "EditionID=EnterpriseN"
set "compositioneditionid=EnterpriseN"
set "relaseId=22H2"
set "CurrentBuild=19045"
set "UBR=4291"
goto forceInstall

:set_ltsc2019
rem choice 14
set "productkey=M7XTQ-FN8P6-TTKYV-9D4CC-J462D"
set "productName=Windows 10 Enterprise LTSC 2019"
set "EditionID=EnterpriseS"
set "compositioneditionid=EnterpriseS"
set "relaseId=1809"
set "CurrentBuild=17763"
set "UBR=4645"
goto forceInstall

:setvarltsc2021
rem choice 15
set "UBR=4412"
set "EditionID=EnterpriseS"
set "CurrentBuild=19044"
set "productName=Windows 10 Enterprise LTSC 2021"
set "relaseId=2009"
set "productkey=M7XTQ-FN8P6-TTKYV-9D4CC-J462D"
set "compositioneditionid=EnterpriseS"
goto forceInstall

:setvarltscn2021
rem choice 16
set "UBR=4412"
set "EditionID=EnterpriseSN"
set "CurrentBuild=19044"
set "productName=Windows 10 Enterprise N LTSC 2021"
set "relaseId=2009"
set "productkey=2D7NQ-3MDXF-9WTDT-X9CCP-CKD8V"
set "compositioneditionid=EnterpriseSN"
goto forceInstall

:setvarltsc2024
rem choice 17
set "UBR=560"
set "EditionID=EnterpriseS"
set "CurrentBuild=26100"
set "productName=Windows 10 Enterprise LTSC 2024"
set "relaseId=2009"
set "productkey=M7XTQ-FN8P6-TTKYV-9D4CC-J462D"
set "compositioneditionid=EnterpriseS"
goto forceInstall

:setvarltscn2024
rem choice 18
set "UBR=560"
set "EditionID=EnterpriseSN"
set "CurrentBuild=26100"
set "productName=Windows 10 Enterprise N LTSC 2024"
set "relaseId=2009"
set "productkey=92NFX-8DJQP-P6BBQ-THF9C-7CG2H"
set "compositioneditionid=EnterpriseSN"
goto forceInstall

:setvarcloud
rem choice 19
set "UBR=4291"
set "EditionID=CloudEdition"
set "CurrentBuild=19045"
set "productName=Windows 10 SE"
set "relaseId=2009"
set "productkey=KY7PN-VR6RX-83W6Y-6DDYQ-T6R4W"
set "compositioneditionid=Enterprise"
goto forceInstall

:setvarcloudn
rem choice 20
set "productkey=K9VKN-3BGWV-Y624W-MCRMQ-BHDCD"
set "productName=Windows 10 SE N"
set "EditionID=CloudEditionN"
set "compositioneditionid=EnterpriseN"
set "relaseId=2009"
set "CurrentBuild=19045"
set "UBR=4291"
goto forceInstall

:setvariotent
rem choice 21
set "UBR=19045"
set "EditionID=IoTEnterprise"
set "CurrentBuild=19045"
set "productName=Windows 10 IoT Enterprise"
set "relaseId=2009"
set "productkey=XQQYW-NFFMW-XJPBH-K8732-CKFFD"
set "compositioneditionid=IoTEnterprise"
goto forceInstall

:setvariotltsc2021
rem choice 22
set "UBR=4412"
set "EditionID=IoTEnterpriseS"
set "CurrentBuild=19044"
set "productName=Windows 10 IoT Enterprise LTSC 2021"
set "relaseId=2009"
set "productkey=YV33Q-MKWV9-6Y72X-H6HDP-74VXV"
set "compositioneditionid=IoTEnterpriseS"
goto forceInstall

:setvariotltsc2024
rem choice 23
set "UBR=560"
set "EditionID=IoTEnterpriseS"
set "CurrentBuild=26100"
set "productName=Windows 10 IoT Enterprise LTSC 2024"
set "relaseId=2009"
set "productkey=V3NF7-3K4WJ-PDM8J-PQJ88-TMPMB"
set "compositioneditionid=IoTEnterpriseS"
goto forceInstall

:setvariotltscsub2024
rem choice 24
set "UBR=560"
set "EditionID=IoTEnterpriseSK"
set "CurrentBuild=26100"
set "productName=Windows 10 IoT Enterprise LTSC 2024 Subscription"
set "relaseId=2009"
set "productkey=6G9N4-4B2FX-7W9KW-6V6QJ-QXWXB"
set "compositioneditionid=IoTEnterpriseSK"
goto forceInstall

:setvarserv22std
rem choice 25
set "UBR=232"
set "EditionID=ServerStandard"
set "CurrentBuild=20348"
set "productName=Windows Server 2022 Standard"
set "relaseId=2009"
set "productkey=VDYBN-27WPP-V4HQT-9VMD4-VMK7H"
set "compositioneditionid=ServerStandard"
goto forceInstall

:setvarserv22data
rem choice 26
set "UBR=232"
set "EditionID=ServerDatacenter"
set "CurrentBuild=20348"
set "productName=Windows Server 2022 Datacenter"
set "relaseId=2009"
set "productkey=WX4NM-KYWYW-QJJR4-XV3QB-6VM33"
set "compositioneditionid=ServerDatacenter"
goto forceInstall

:setvarserv25std
rem choice 27
set "UBR=560"
set "EditionID=ServerStandard"
set "CurrentBuild=26100"
set "productName=Windows Server 2025 Standard"
set "relaseId=2009"
set "productkey=DPNXD-67YY9-WWFJJ-RYH99-RM832"
set "compositioneditionid=ServerStandard"
goto forceInstall

:setvarserv25data
rem choice 28
set "UBR=560"
set "EditionID=ServerDatacenter"
set "CurrentBuild=26100"
set "productName=Windows Server 2025 Datacenter"
set "relaseId=2009"
set "productkey=CNFDQ-2BW8H-9V4WM-TKCPD-MD2QF"
set "compositioneditionid=ServerDatacenter"
goto forceInstall

:forceInstall
echo.
echo Applying registry changes for %productName%...

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName /t REG_SZ /d "%productName%" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v EditionID /t REG_SZ /d "%EditionID%" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v CompositionEditionID /t REG_SZ /d "%EditionID%" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ReleaseId /t REG_SZ /d "%relaseId%" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v DisplayVersion /t REG_SZ /d "%relaseId%" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v CurrentBuild /t REG_SZ /d "%CurrentBuild%" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v CurrentBuildNumber /t REG_SZ /d "%CurrentBuild%" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v UBR /t REG_DWORD /d %UBR% /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion" /v ProductName /t REG_SZ /d "%productName%" /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion" /v EditionID /t REG_SZ /d "%EditionID%" /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion" /v CompositionEditionID /t REG_SZ /d "%EditionID%" /f  
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion" /v ReleaseId /t REG_SZ /d "%relaseId%" /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion" /v DisplayVersion /t REG_SZ /d "%relaseId%" /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion" /v CurrentBuild /t REG_SZ /d "%CurrentBuild%" /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion" /v CurrentBuildNumber /t REG_SZ /d "%CurrentBuild%" /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion" /v UBR /t REG_DWORD /d %UBR% /f 

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion" /v ProductName /t REG_SZ /d "%productName%" /f /reg:32
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion" /v EditionID /t REG_SZ /d "%EditionID%" /f /reg:32
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion" /v CompositionEditionID /t REG_SZ /d "%EditionID%" /f  /reg:32
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion" /v ReleaseId /t REG_SZ /d "%relaseId%" /f /reg:32
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion" /v DisplayVersion /t REG_SZ /d "%relaseId%" /f /reg:32
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion" /v CurrentBuild /t REG_SZ /d "%CurrentBuild%" /f /reg:32
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion" /v CurrentBuildNumber /t REG_SZ /d "%CurrentBuild%" /f /reg:32
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion" /v UBR /t REG_DWORD /d %UBR% /f /reg:32

echo.
echo Please wait restarting explorer.exe process...
taskkill /IM explorer.exe /F >nul
timeout /t 1 >nul
start explorer.exe
:setPath
powershell -Command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Please enter the folder path containing the Windows setup.exe:', 'Alert', 'OK', [System.Windows.Forms.MessageBoxIcon]::Warning)"
for /f "delims=" %%A in ('powershell -Command "$f=(New-Object -ComObject Shell.Application).BrowseForFolder(0,'Seleziona una cartella',0); if ($f) { $f.Self.Path }"') do set "percorso=%%A"

if "%percorso%"=="" (
    echo No folder selected. Exiting...
    pause
    exit /b
)

goto setup

:setup
timeout /t 1 >nul
start "" "%percorso%\setup.exe" /eula accept /telemetry disable /priority normal /resizerecoverypartition enable /pkey %productkey%

echo.
echo All changes have been applied successfully.
exit /b

:UACPrompt
echo You must run the script as administrator.
pause
exit /b
