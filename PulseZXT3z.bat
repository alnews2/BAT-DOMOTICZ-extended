::PulseZXT3z
::
::
call %~dp0SetSymbols
echo %echomode%
echo. >>%logfile%
echo [[PulseZXT3z=============] >>%logfile%
for /f "delims=" %%i in ('date/T') do Set MyDate=%%i
for /f "delims=" %%i in ('time/T') do Set Mytime=%%i
echo %MyDate% : %Mytime% (%3 %1 secondes) >>%logfile%
echo [--------------------------] >>%logfile%
call %~dp0ZXT3Max 
timeout %1 >NUL
call %~dp0ZXT3Min 
echo [================PulseZXT3z]] >>%logfile%

