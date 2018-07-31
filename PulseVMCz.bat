::PulseVMCz (tempo=%1 sec)
::
::
call SetSymbols
echo %echomode%
echo. >>%logfile%
echo [[PulseVMCz==================] >>%logfile%
for /f "delims=" %%i in ('date/T') do Set MyDate=%%i
for /f "delims=" %%i in ('time/T') do Set Mytime=%%i
echo %MyDate% : %Mytime% (%3 %1 secondes) >>%logfile%
echo [--------------------------] >>%logfile%
call RELAYx_y %VMC% %VMCon% "VMC tempo on"
timeout %1 >NUL
call RELAYx_y %VMC% %VMCoff% "VMC tempo off"
echo [==================PulseVMCz]] >>%logfile%

