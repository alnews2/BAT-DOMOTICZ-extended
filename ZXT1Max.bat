::ZXT1Max
::
::
call SetSymbols
echo %echomode%
echo. >>%logfile%
echo [[ZXT1Max===================] >>%logfile%
for /f "delims=" %%i in ('date/T') do Set MyDate=%%i
for /f "delims=" %%i in ('time/T') do Set Mytime=%%i
echo %MyDate% : %Mytime% (%3 %1 secondes) >>%logfile%
echo [--------------------------] >>%logfile%
call ZXTxSETTEMPy %ZXT1heatTemp% 29
call ZXTxfany %ZXT1fan% %FanOnHigh%
echo [===================ZXT1Max]] >>%logfile%

