@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/jay-hankins/Auto_Installers/master/PowerShell_Scripts/CS_Tools.ps1'))"

cyg-get wget
cyg-get curl
cyg-get nano
cyg-get vim

wget https://raw.githubusercontent.com/jay-hankins/Auto_Installers/master/Shell_Scripts/Oh_My_Cygwin_Downloader.sh
C:\bin\cygwin\bin\bash Oh-My-Cygwin-Downloader.sh
del Oh-My-Cygwin-Downloader.sh