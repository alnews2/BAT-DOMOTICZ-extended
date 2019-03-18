::ZXT1Off
::
::
call SetSymbols
echo %echomode%
echo. >>%logfile%
echo [[ZXT1Off============] >>%logfile%
for /f "delims=" %%i in ('date/T') do Set MyDate=%%i
for /f "delims=" %%i in ('time/T') do Set Mytime=%%i
echo %MyDate% : %Mytime% (%3 %1 secondes) >>%logfile%
echo [--------------------------] >>%logfile%
call ZXTxMODEy %ZXT1mode% %Modeoff%
timeout 1 >NUL
echo [============ZXT1Off]] >>%logfile%

