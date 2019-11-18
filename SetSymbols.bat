::SetSymbols
::
::

:::::::::::::::::::ZXT::::::::::::::::::::::
set ZXTpulse-duration=600
::

set ZXT1temp=343
set ZXT2temp=336
set ZXT3temp=298

set ZXT1mode=337
set ZXT2mode=330
set ZXT3mode=283

set Modeoff=0
set Modeheat=1
set Modecool=2
::
set ZXT1heatTemp=338
set ZXT2heatTemp=331
set ZXT3heatTemp=284

set ZXT1coldTemp=339
set ZXT2coldTemp=332
set ZXT3coldTemp=285
::
set ZXT1fan=342
set ZXT2fan=335
set ZXT3fan=288

set FanAutoLow=0
set FanOnLow=1
set FanAutoHigh=2
set FanOnHigh=3
:::::::::::::::::VMC::::::::::::::::::::::::
set VMC=73
set VMCon=On
set VMCoff=Off
set VMC-pulse-duration=3600
::::::::::::::::::FP::::::::::::::::::::::::
set FP1=34
set FP2=84

set FPconfort=100
set FPeco=25
set FP1-pulse-duration=3600
set FP2-pulse-duration=3600
:::::::::::::::::DIMMER:::::::::::::::::::::
set DIMMERID=88
::
set AUBEminval=5
set AUBEstepval=1
set AUBEmaxval=95
set AUBEintertemp=1
set AUBEstop=300
:::::::::::::::::EXPLOIT::::::::::::::::::::
set echomode=off
::set echomode=on
Set intercmd=5
set logfile="C:\Program Files (x86)\Domoticz\Z9AC\log.log"
set modiffile="modif.bat"


::------------------------------------------

call %modiffile%


