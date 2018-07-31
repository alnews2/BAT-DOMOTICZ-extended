::PulseZXT1z (tempo=%1 sec)
::
::
call SetSymbols
echo %echomode%
echo. >>%logfile%
echo [[PulseZXT1=================] >>%logfile%
for /f "delims=" %%i in ('date/T') do Set MyDate=%%i
for /f "delims=" %%i in ('time/T') do Set Mytime=%%i
echo %MyDate% : %Mytime% (%3 %1 secondes) >>%logfile%
echo [--------------------------] >>%logfile%
call ZXT1Max 
timeout %1 >NUL
call ZXT1Min 
echo [=================PulseZXT1]] >>%logfile%

