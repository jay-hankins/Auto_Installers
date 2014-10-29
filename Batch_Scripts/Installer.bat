@echo off
echo We are going to install Chocolatey, a package manager for Windows. Hang tight.
echo.

@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

cls
echo Now we are ready to install helpful CS tools! Please do not close any windows opened during this process.
pause

@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/jay-hankins/Auto_Installers/master/PowerShell_Scripts/CS_Tools.ps1'))"

rem call cyg-get default
rem call cyg-get wget
rem call cyg-get curl
rem call cyg-get nano
rem call cyg-get vim

cls
echo We have finished installing the CS tools. 
echo.
echo Do you want to install recommended software (see list on github.com/jay-hankins/Auto_Installers/wiki/Packages)?
echo. 
SET /P ANSWER=Do you want to install recommended software (Y/N)? 

echo You chose: %ANSWER% 
if /i {%ANSWER%}=={y} (goto :yes) 
if /i {%ANSWER%}=={yes} (goto :yes) 
goto :no
 
:yes 
echo Installing recommended software...

@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/jay-hankins/Auto_Installers/master/PowerShell_Scripts/Recommended_Packages.ps1'))"

cls

echo We have finished installing recommended software. Thank you, come again!
echo.
echo Please check the GitHub wiki (github.com/jay-hankins/Auto_Installers/wiki/Post-Install) for getting started information.
pause
exit /b 0 

:no 
cls
echo Alright, no recommended software. Thank you, come again! 
echo.
echo Please check the GitHub wiki (github.com/jay-hankins/Auto_Installers/wiki/Post-Install) for getting started information.
pause
exit /b 1