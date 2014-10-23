echo We are going to install Chocolatey, a package manager for Windows. Hang tight.

@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

echo Now we are ready to install helpful CS tools! Please do not close any windows opened during this process.
pause

@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/jay-hankins/Auto_Installers/master/PowerShell_Scripts/CS_Tools.ps1'))"

call cyg-get default
call cyg-get wget
call cyg-get curl
call cyg-get nano
call cyg-get vim
call cyg-get git

echo We have finished installing the CS tools. Do you want to install recommended software (see list on github.com/jay-hankins/Auto_Installers/wiki/Packages)?

SET /P ANSWER=Do you want to install recommended software (Y/N)? 
echo You chose: %ANSWER% 
if /i {%ANSWER%}=={y} (goto :yes) 
if /i {%ANSWER%}=={yes} (goto :yes) 
goto :no 
:yes 
echo Installing recommended software...
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/jay-hankins/Auto_Installers/master/PowerShell_Scripts/Recommended_Packages.ps1'))"
echo We have finished installing recommended software. Thank you, come again!
echo Please check the GitHub wiki (github.com/jay-hankins/Auto_Installers/wiki/Post-Install) for getting started information.
exit /b 0 

:no 
echo Alright, no recommended software. Thank you, come again! 
echo Please check the GitHub wiki (github.com/jay-hankins/Auto_Installers/wiki/Post-Install) for getting started information.
exit /b 1