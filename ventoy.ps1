$source = "https://github.com/ventoy/Ventoy/releases/download/v1.0.53/ventoy-1.0.53-windows.zip"
$destination = "ventoy.zip"

Start-BitsTransfer -Source $source -Destination $destination

Expand-Archive -Path "ventoy.zip" -DestinationPath "ventoy-win"

Remove-Item -path "ventoy.zip" -force

cd ventoy-win

cd ventoy-1.0.53

.\Ventoy2Disk.exe

