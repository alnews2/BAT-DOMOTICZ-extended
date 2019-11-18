::ZXT3Off
::
::
call %~dp0SetSymbols
echo %echomode%
echo. >>%logfile%
echo [[ZXT3Off============] >>%logfile%
for /f "delims=" %%i in ('date/T') do Set MyDate=%%i
for /f "delims=" %%i in ('time/T') do Set Mytime=%%i
echo %MyDate% : %Mytime% (%3 %1 secondes) >>%logfile%
echo [--------------------------] >>%logfile%
call %~dp0ZXTxMODEy %ZXT3mode% %Modeoff%
timeout 1 >NUL
echo [============ZXT3Off]] >>%logfile%

