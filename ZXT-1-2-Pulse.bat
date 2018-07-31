::ZXT-1-2-Pulse
::
::
call SetSymbols
echo %echomode%
echo. >> %logfile%
echo [[ZXT-1-2-Pulse===================] >> %logfile%
for /f "delims=" %%i in ('date/T') do Set MyDate=%%i
for /f "delims=" %%i in ('time/T') do Set Mytime=%%i
echo %MyDate% : %Mytime% (%3 %1 secondes) >> %logfile%
echo [--------------------------] >> %logfile%
call PulseZXT1-600
timeout 5 >NUL
call PulseZXT2-600
timeout 5 >NUL
echo [===================ZXT-1-2-Pulse]] >> %logfile%

