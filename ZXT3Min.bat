::ZXT3Min
::
::
call SetSymbols
echo %echomode%
echo. >>%logfile%
echo [[ZXT3Min======================] >>%logfile%
for /f "delims=" %%i in ('date/T') do Set MyDate=%%i
for /f "delims=" %%i in ('time/T') do Set Mytime=%%i
echo %MyDate% : %Mytime% (%3 %1 secondes) >>%logfile%
echo [--------------------------] >>%logfile%
call ZXTxSETTEMPy %ZXT3heatTemp% 17
call ZXTxfany %ZXT3fan% %FanAutoLow%
echo [======================ZXT3Min]] >>%logfile%

