::FocusPulseZXT3-600
::
::
call SetSymbols
echo %echomode%
echo. >>%logfile%
echo [[FocusPulseZXT3-600========] >>%logfile%
for /f "delims=" %%i in ('date/T') do Set MyDate=%%i
for /f "delims=" %%i in ('time/T') do Set Mytime=%%i
echo %MyDate% : %Mytime% (%ZXTpulse-duration% secondes) >>%logfile%
echo [--------------------------] >>%logfile%
call FocusPulseZXT3z %ZXTpulse-duration%
echo [========FocusPulseZXT3-600]] >>%logfile%
