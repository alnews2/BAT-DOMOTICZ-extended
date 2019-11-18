::ZXTxSETTEMPy   (%1 en secondes)
::
::
::
call %~dp0SetSymbols
set PulseValue=%1
echo set ZXTpulse-duration=%PulseValue% >%modiffile%
call %~dp0%modiffile%