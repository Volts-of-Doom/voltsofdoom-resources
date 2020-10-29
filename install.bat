@echo off

echo This script will install the voltsofdoom-resources main branch. This script should run directly in the Roaming dir.

setlocal

:PROMPT
SET /P AREYOUSURE=Are you sure (Y/N)?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO TERMINATE

:CLONE
mkdir zapbyte
cd zapbyte

echo Cloning.

git clone https://github.com/Volts-of-Doom/voltsofdoom-resources.git

ren voltsofdoom-resources voltsofdoom

echo Done!

GOTO END

:TERMINATE
echo Program terminated. Will not clone.

:END
endlocal

PAUSE