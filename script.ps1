cd C:/.
md temp
cd temp
$DeviceUsername = Read-Host "Please enter the device username"
mdmdiagnosticstool.exe -area Autopilot; DeviceEnrollment;DeviceProvisioning -cab autopilot-logs.cab

wget https://aka.ms/intunexml -outfile Intune.xml
wget https://aka.ms/intuneps1 -outfile IntuneODCStandAlone.ps1
powerShell -ExecutionPolicy Bypass -File .\IntuneODCStandAlone.ps1

