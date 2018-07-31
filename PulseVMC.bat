::PulseVMC
::
::
call SetSymbols
echo %echomode%
echo. >>%logfile%
echo [[PulseVMC==================] >>%logfile%
for /f "delims=" %%i in ('date/T') do Set MyDate=%%i
for /f "delims=" %%i in ('time/T') do Set Mytime=%%i
echo %MyDate% : %Mytime% (%VMC-pulse-duration% secondes) >>%logfile%
echo [--------------------------] >>%logfile%
call PulseVMCz %VMC-pulse-duration%
echo [==================PulseVMC]] >>%logfile%

