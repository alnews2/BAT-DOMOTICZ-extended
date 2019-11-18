::ZXT120 mode   (&idx=%1  &nvalue=%2   Commentaire=%3)
::
::
::
call %~dp0SetSymbols
echo %echomode%
echo. >>%logfile%
echo [[ZXTmode %1 %2===================] >>%logfile%
for /f "delims=" %%i in ('date/T') do Set MyDate=%%i
for /f "delims=" %%i in ('time/T') do Set Mytime=%%i
echo %MyDate% : %Mytime% (%3) >>%logfile%
echo [--------------------------] >>%logfile%
echo ZXTx_nvalue_y  %1(mode) %2 %3 >>%logfile%
call %~dp0ZXTx_nvalue_y  %1 %2 %3
echo [=========================ZXTmode]] >>%logfile%




