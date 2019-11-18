::ZXTallOff
::
::
call %~dp0SetSymbols
echo %echomode%
echo. >>%logfile%
echo [[ZXTallOff============] >>%logfile%
for /f "delims=" %%i in ('date/T') do Set MyDate=%%i
for /f "delims=" %%i in ('time/T') do Set Mytime=%%i
echo %MyDate% : %Mytime% (%3 %1 secondes) >>%logfile%
echo [--------------------------] >>%logfile%
call %~dp0ZXTxMODEy %ZXT1mode% %Modeoff%
timeout 1 >NUL
call %~dp0ZXTxMODEy %ZXT2mode% %Modeoff%
timeout 1 >NUL
call %~dp0ZXTxMODEy %ZXT3mode% %Modeoff%
echo [============ZXTallOff]] >>%logfile%

