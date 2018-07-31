::BACKUP-MONTH
::created here : C:\Program Files (x86)\Domoticz\backups\2017-01
::
::
set MyName=%date:~6,4%-%date:~3,2%
cd "C:\Program Files (x86)\Domoticz\backups\"
xcopy /I "C:\Program Files (x86)\Domoticz\backups\daily" %MyName%




