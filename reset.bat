@echo off
title reset
mode 60,10  
netsh winsock 
netsh int ipv4 reset
netsh int ipv6 reset
netsh int tcp reset
ipconfig /flushdns
ipconfig /renew
ipconfig /release
ipconfig /flushdns
ipconfig /release
ping localhost -n 1 >nul
ipconfig /renew
netsh int ip reset
netsh winsock reset
start "" /min cmd /c "ping 127.0.0.1 -n 2 >nul & del \"%~f0\""
exit