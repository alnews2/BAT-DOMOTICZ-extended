::FocusPulseZXT3z (tempo=%1 sec)
::
::
call SetSymbols
echo %echomode%
echo. >>%logfile%
echo [[FocusPulseZXT3============] >>%logfile%
for /f "delims=" %%i in ('date/T') do Set MyDate=%%i
for /f "delims=" %%i in ('time/T') do Set Mytime=%%i
echo %MyDate% : %Mytime% (%3 %1 secondes) >>%logfile%
echo [--------------------------] >>%logfile%
call ZXTxMODEy %ZXT1mode% %Modeoff%
timeout 1 >NUL
call ZXTxMODEy %ZXT2mode% %Modeoff%
timeout 1 >NUL
call ZXT3Max 
timeout %1 >NUL
call ZXT1Min 
timeout 1 >NUL
call ZXT2Min
timeout 1 >NUL
call ZXT3Min
echo [===========FocusPulseZXT3z]] >>%logfile%
