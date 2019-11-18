::DIMMERx_y    (&idx=%1  &level=%2   Commentaire=%3)
::
::
::
call %~dp0SetSymbols
echo %echomode%
echo. >>%logfile%
echo [[DIMMERx_y %1 %2========================] >>%logfile%
for /f "delims=" %%i in ('date/T') do Set MyDate=%%i
for /f "delims=" %%i in ('time/T') do Set Mytime=%%i
echo %MyDate% : %Mytime% (%3) >>%logfile%
echo [--------------------------] >>%logfile%
set cde="http://127.0.0.1:8080/json.htm?type=command&param=switchlight&idx=%1&switchcmd=Set%%20Level&level=%2"
echo %cde% >>%logfile%
http %cde% >>%logfile%
timeout %intercmd% >NUL
echo [==============================DIMMERx_y]] >>%logfile%




