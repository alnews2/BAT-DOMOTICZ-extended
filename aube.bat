::AUBE
::
::
::
call SetSymbols
echo %echomode%
echo. >>%logfile%
echo [[AUBE %1 %2========================] >>%logfile%
for /f "delims=" %%i in ('date/T') do Set MyDate=%%i
for /f "delims=" %%i in ('time/T') do Set Mytime=%%i
echo %MyDate% : %Mytime% >>%logfile%
echo [--------------------------] >>%logfile%

for /l %%v in (%AUBEminval%,%AUBEstepval%,%AUBEmaxval%) do (
call DIMMERx_y %DIMMERID% %%v
timeout %AUBEintertemp% >NUL
)
timeout %AUBEstop% >NUL
call DIMMERx_y %DIMMERID% 0
echo [==============================AUBE]] >>%logfile%

