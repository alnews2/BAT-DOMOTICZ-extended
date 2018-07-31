::PulseZXT1-600
::
::
call SetSymbols
echo %echomode%
echo. >>%logfile%
echo [[PulseZXT1-600=============] >>%logfile%
for /f "delims=" %%i in ('date/T') do Set MyDate=%%i
for /f "delims=" %%i in ('time/T') do Set Mytime=%%i
echo %MyDate% : %Mytime% (%ZXTpulse-duration% secondes) >>%logfile%
echo [--------------------------] >>%logfile%
call PulseZXT1z %ZXTpulse-duration%
echo [=============PulseZXT1-600]] >>%logfile%

