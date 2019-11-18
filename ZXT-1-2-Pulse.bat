::ZXT-1-2-Pulse
::
::
call %~dp0SetSymbols
echo %echomode%
echo. >> %logfile%
echo [[ZXT-1-2-Pulse===================] >> %logfile%
for /f "delims=" %%i in ('date/T') do Set MyDate=%%i
for /f "delims=" %%i in ('time/T') do Set Mytime=%%i
echo %MyDate% : %Mytime% (%3 %1 secondes) >> %logfile%
echo [--------------------------] >> %logfile%
call %~dp0PulseZXT1-600
timeout 5 >NUL
call %~dp0PulseZXT2-600
timeout 5 >NUL
echo [===================ZXT-1-2-Pulse]] >> %logfile%

