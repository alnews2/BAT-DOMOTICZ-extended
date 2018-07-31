::ZXT2Max
::
::
call SetSymbols
echo %echomode%
echo. >>%logfile%
echo [[ZXT2Max===================] >>%logfile%
for /f "delims=" %%i in ('date/T') do Set MyDate=%%i
for /f "delims=" %%i in ('time/T') do Set Mytime=%%i
echo %MyDate% : %Mytime% (%3 %1 secondes) >>%logfile%
echo [--------------------------] >>%logfile%
call ZXTxSETTEMPy %ZXT2heatTemp% 29
call ZXTxfany %ZXT2fan% %FanOnHigh%
echo [===================ZXT2Max]] >>%logfile%

