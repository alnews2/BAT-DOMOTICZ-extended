::ZXTxHTEMPy   (&idx=%1  &svalue=%2   Commentaire=%3)
::Cold and Heat differ only by idx...
::
::
call %~dp0SetSymbols
echo %echomode%
echo. >>%logfile%
echo [[ZXTxHTEMPy %1 %2==================] >>%logfile%
for /f "delims=" %%i in ('date/T') do Set MyDate=%%i
for /f "delims=" %%i in ('time/T') do Set Mytime=%%i
echo %MyDate% : %Mytime% (%3) >>%logfile%
echo [--------------------------] >>%logfile%
echo ZXTxSETTEMPy %1(heat) %2 %3 >>%logfile%
call %~dp0ZXTxSETTEMPy %1 %2 %3
echo [========================ZXTxHTEMPy]] >>%logfile%

