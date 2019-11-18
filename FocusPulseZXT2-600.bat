::FocusPulseZXT2-600
::
::
call %~dp0SetSymbols
echo %echomode%
echo. >>%logfile%
echo [[FocusPulseZXT2-600========] >>%logfile%
for /f "delims=" %%i in ('date/T') do Set MyDate=%%i
for /f "delims=" %%i in ('time/T') do Set Mytime=%%i
echo %MyDate% : %Mytime% (%ZXTpulse-duration% secondes) >>%logfile%
echo [--------------------------] >>%logfile%
call %~dp0FocusPulseZXT2z %ZXTpulse-duration%
echo [========FocusPulseZXT2-600]] >>%logfile%
