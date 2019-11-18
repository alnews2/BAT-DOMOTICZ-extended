::ZXTALLMin
::
::
call %~dp0SetSymbols
echo %echomode%
echo. >> %logfile%
echo [[ZXTALLMin=====================] >> %logfile%
for /f "delims=" %%i in ('date/T') do Set MyDate=%%i
for /f "delims=" %%i in ('time/T') do Set Mytime=%%i
echo %MyDate% : %Mytime% (%3 %1 secondes) >> %logfile%
echo [--------------------------] >> %logfile%
call %~dp0ZXT1Min
timeout 5 >NUL
call %~dp0ZXT2Min
timeout 5 >NUL
call %~dp0ZXT3Min
echo [=====================ZXTALLMin]] >> %logfile%

