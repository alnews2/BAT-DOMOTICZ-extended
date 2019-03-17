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
call ZXTxMODEy %ZXT2mode% %Modeheat%
timeout 1 >NUL
call ZXTxSETTEMPy %ZXT2heatTemp% 29
timeout 1 >NUL
call ZXTxfany %ZXT2fan% %FanOnHigh%
timeout 1 >NUL
echo [===================ZXT2Max]] >>%logfile%

