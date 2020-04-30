
$Response;
[uint16]$port = Read-Host "which port do you want to block"

do {
$Listener = [System.Net.Sockets.TcpListener]$port;
$Listener.Start();

Write-Output $Listener
#wait, try connect from another PC etc.
#Start-Sleep -s 10
$Response = Read-Host "Do you want to stop the lock? (Y)"
}until ($Response -eq "y");

$Listener.Stop();
