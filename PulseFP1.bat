::PulseFP1
::
::
call SetSymbols
echo %echomode%
echo. >>%logfile%
echo [[PulseFP1=============] >>%logfile%
for /f "delims=" %%i in ('date/T') do Set MyDate=%%i
for /f "delims=" %%i in ('time/T') do Set Mytime=%%i
echo %MyDate% : %Mytime% (%FP1-pulse-duration% secondes) >>%logfile%
echo [--------------------------] >>%logfile%
call FPx_y %FP1% %FPconfort%
timeout %FP1-pulse-duration% >NUL
call FPx_y %FP1% %FPeco%
echo [=============PulseFP1]] >>%logfile%

