@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/jay-hankins/ChocolateyPackages/master/AutoInstallers/PowerShell Scripts/CSTools.ps1'))"

cyg-get wget
cyg-get curl
cyg-get nano
cyg-get vim

wget https://raw.githubusercontent.com/jay-hankins/ChocolateyPackages/master/AutoInstallers/Shell%20Scripts/Oh-My-Cygwin-Downloader.sh
C:\bin\cygwin\bin\bash Oh-My-Cygwin-Downloader.sh
del Oh-My-Cygwin-Downloader.sh