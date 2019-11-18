::ZXTxFANy   (&idx=%1  &nvalue=%2   Commentaire=%3)
::                         0-->AutoLow
::                         1-->OnLow
::                         2-->AutoHigh
::                         3-->OnHigh
::
::
call %~dp0SetSymbols
echo %echomode%
echo. >>%logfile%
echo [[ZXTxFANy %1 %2====================] >>%logfile%
for /f "delims=" %%i in ('date/T') do Set MyDate=%%i
for /f "delims=" %%i in ('time/T') do Set Mytime=%%i
echo %MyDate% : %Mytime% (%3) >>%logfile%
echo [--------------------------] >>%logfile%
echo ZXTx_nvalue_y  %1(fan) %2 %3 >>%logfile%
call %~dp0ZXTx_nvalue_y  %1 %2 %3
echo [==========================ZXTxFANy]] >>%logfile%




