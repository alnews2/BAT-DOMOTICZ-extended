::SetSymbols
::
::

:::::::::::::::::::ZXT::::::::::::::::::::::
set ZXTpulse-duration=600
::
set ZXT1mode=244
set ZXT2mode=186
set ZXT3mode=41

set Modeoff=0
set Modeheat=1
set Modecool=2
::
set ZXT1heatTemp=245
set ZXT2heatTemp=187
set ZXT3heatTemp=42

set ZXT1coldTemp=246
set ZXT2coldTemp=188
set ZXT3coldTemp=43
::
set ZXT1fan=249
set ZXT2fan=191
set ZXT3fan=46

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


