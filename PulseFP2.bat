::PulseFP2
::
::
call %~dp0SetSymbols
echo %echomode%
echo. >>%logfile%
echo [[PulseFP2=============] >>%logfile%
for /f "delims=" %%i in ('date/T') do Set MyDate=%%i
for /f "delims=" %%i in ('time/T') do Set Mytime=%%i
echo %MyDate% : %Mytime% (%FP1-pulse-duration% secondes) >>%logfile%
echo [--------------------------] >>%logfile%
call %~dp0FPx_y %FP2% %FPconfort%
timeout %FP2-pulse-duration% >NUL
call %~dp0FPx_y %FP2% %FPeco%
echo [=============PulseFP2]] >>%logfile%

