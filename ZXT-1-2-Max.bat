::ZXT-1-2-Max
::
::
call %~dp0SetSymbols
echo %echomode%
echo. >> %logfile%
echo [[ZXT-1-2-Max===================] >> %logfile%
for /f "delims=" %%i in ('date/T') do Set MyDate=%%i
for /f "delims=" %%i in ('time/T') do Set Mytime=%%i
echo %MyDate% : %Mytime% (%3 %1 secondes) >> %logfile%
echo [--------------------------] >> %logfile%
call %~dp0ZXT1Max
timeout 5 >NUL
call %~dp0ZXT2Max
timeout 5 >NUL
echo [===================ZXT-1-2-Max]] >> %logfile%

