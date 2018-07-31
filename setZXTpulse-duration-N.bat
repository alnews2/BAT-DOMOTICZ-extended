::ZXTxSETTEMPy   (%1 en secondes)
::
::
::
call SetSymbols
set PulseValue=%1
echo set ZXTpulse-duration=%PulseValue% >%modiffile%
call %modiffile%