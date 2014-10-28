@echo off
echo We are going to install some additional applications for Jay Hankins.
echo.

@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/jay-hankins/Auto_Installers/master/PowerShell_Scripts/Jay_Packages.ps1'))"