#########################
# Autoinstall script using chocolatey
#########################
# Note: Net 4.0 must be installed prior to running this script
#
#Modify this line to change packages
$items = @("GoogleChrome", "Firefox", "atom", "ccleaner", "skype", "vlc", "k-litecodecpackbasic", "flashplayerplugin", "DotNet4.5", "iTunes",  "paint.net", "picasa", "Silverlight", "spotify", "FoxitReader")



#################
# Create packages.config based on passed arguments
#################
$xml = '<?xml version="1.0" encoding="utf-8"?>'+ "`n" +'<packages>' + "`n"
foreach ($item in $items)
{
  $xml += "`t" +'<package id="' + $item + '"/>' + "`n"
}
$xml += '</packages>'

$file = ([system.environment]::getenvironmentvariable("userprofile") + "\packages.config")
$xml | out-File $file

######
# Install packages with cinst
######

cinst $file


########
# Delete packages.config
Remove-Item $file