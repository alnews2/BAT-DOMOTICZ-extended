::ZXT-1-2-Max
::
::
call SetSymbols
echo %echomode%
echo. >> %logfile%
echo [[ZXT-1-2-Max===================] >> %logfile%
for /f "delims=" %%i in ('date/T') do Set MyDate=%%i
for /f "delims=" %%i in ('time/T') do Set Mytime=%%i
echo %MyDate% : %Mytime% (%3 %1 secondes) >> %logfile%
echo [--------------------------] >> %logfile%
call ZXT1Max
timeout 5 >NUL
call ZXT2Max
timeout 5 >NUL
echo [===================ZXT-1-2-Max]] >> %logfile%

