@echo off
echo MSGBOX "Make sure to run this as Adminstrator and your download is in C:\Username\Downloads" > %temp%\TEMPmessage.vbs
call %temp%\TEMPmessage.vbs
del %temp%\TEMPmessage.vbs /f /q
cd C:\
mkdir PNP
cd %userprofile%\downloads
expand .\*.cab -f:* C:\PNP
cd C:\PNP
for /f %%i in ('dir /b /s *.inf') do pnputil.exe -a %%i
echo MSGBOX "Please Reboot the Machine" > %temp%\TEMPmessage.vbs
call %temp%\TEMPmessage.vbs
del %temp%\TEMPmessage.vbs /f /q
