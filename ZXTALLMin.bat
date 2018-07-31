::ZXTALLMin
::
::
call SetSymbols
echo %echomode%
echo. >> %logfile%
echo [[ZXTALLMin=====================] >> %logfile%
for /f "delims=" %%i in ('date/T') do Set MyDate=%%i
for /f "delims=" %%i in ('time/T') do Set Mytime=%%i
echo %MyDate% : %Mytime% (%3 %1 secondes) >> %logfile%
echo [--------------------------] >> %logfile%
call ZXT1Min
timeout 5 >NUL
call ZXT2Min
timeout 5 >NUL
call ZXT3Min
echo [=====================ZXTALLMin]] >> %logfile%

