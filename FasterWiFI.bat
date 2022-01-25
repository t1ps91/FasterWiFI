@echo off
wmic process where name="mqsvc.exe" CALL setpriority "realtime"
netsh int tcp set global autotuning=high
netsh int tcp set global dca=enabled
netsh int ip reset C:\tcplog.txt
netsh int tcp set global netdma=enabled
ipconfig /release
ipconfig /renew
ipconfig /flushdns
netsh int tcp set global rss=enable
netsh wlan disconnect