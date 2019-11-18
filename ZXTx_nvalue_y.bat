::ZXTx_nvalue_y   (&idx=%1  &nvalue=%2   Commentaire=%3)
::Mode and Fan differ only by idx...
::
::
call %~dp0SetSymbols
echo %echomode%
echo. >>%logfile%
echo [[ZXTx_nvalue_y %1 %2=======================] >>%logfile%
for /f "delims=" %%i in ('date/T') do Set MyDate=%%i
for /f "delims=" %%i in ('time/T') do Set Mytime=%%i
echo %MyDate% : %Mytime% (%3) >>%logfile%
echo [--------------------------] >>%logfile%
set cde="http://127.0.0.1:8080/json.htm?type=command&param=udevice&idx=%1&nvalue=%2"
echo %cde% >>%logfile%
http %cde% >>%logfile%
timeout %intercmd% >NUL
echo [=============================ZXTx_nvalue_y]] >>%logfile%
