
net.exe user "installer" "Password@001"
write-host Username: installer
write-host Password: Password@001

Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server'-name "fDenyTSConnections" -Value 0
Enable-NetFirewallRule -DisplayGroup "Remote Desktop"

.\ngrok.exe config add-authtoken 2qUaH8F3YBGf7zCrbTEeqQr9IYL_4xiTR9DefetTKw6GTXQKb
.\ngrok.exe tcp 3389
