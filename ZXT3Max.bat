::ZXT3Max
::
::
call SetSymbols
echo %echomode%
echo. >>%logfile%
echo [[ZXT3Max=====================] >>%logfile%
for /f "delims=" %%i in ('date/T') do Set MyDate=%%i
for /f "delims=" %%i in ('time/T') do Set Mytime=%%i
echo %MyDate% : %Mytime% (%3 %1 secondes) >>%logfile%
echo [--------------------------] >>%logfile%
call ZXTxSETTEMPy %ZXT3heatTemp% 29
call ZXTxfany %ZXT3fan% %FanOnHigh%
echo [=====================ZXT3Max]] >>%logfile%

