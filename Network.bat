@echo off
title Network stats
mode 38, 20

echo Loading Network information...

:Loop
for /f "tokens=2 delims=: " %%a in ('netsh wlan show interface ^| findstr "SSID" ^| findstr /v "BSSID"') do set SSID=%%a
for /f "tokens=2 delims=: " %%a in ('netsh wlan show interface ^| findstr "Description"') do set adapter=%%a
for /f "tokens=2 delims=: " %%a in ('netsh wlan show interface ^| findstr "State"') do set state=%%a
for /f "tokens=2 delims=: " %%a in ('netsh wlan show interface ^| findstr "Signal"') do set signal=%%a

for /f "tokens=4 delims==" %%a in ('ping 8.8.8.8 -n 1 ^| findstr "Average"') do set ping=%%a

for /f "tokens=2" %%a in ('netstat -e ^| findstr "Bytes"') do set r_bytes=%%a
for /f "tokens=3" %%a in ('netstat -e ^| findstr "Bytes"') do set s_bytes=%%a


ping 8.8.8.8 -n 3 > ping.txt
for /f "tokens=10" %%a in ('type ping.txt ^| findstr "Lost"') do set p_loss=%%a

cls
echo.
echo  --- Network Information ---
echo  SSID:    %SSID%
echo  Adapter: %adapter%
echo  State:   %state%
echo  Signal:  %signal%
echo.
echo  --- Speed / Latency --- 
echo  Ping:    %ping%
echo  Loss:    %p_loss% 
echo.
echo  --- Data Traffic ----
echo  Received: %r_bytes% 
echo  Sent:     %s_bytes% 
echo.

goto Loop
