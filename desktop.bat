@ECHO off
type "txt\ascii.txt"
echo Rocco Lake 2024, licensed under GNU GPL v3.
:start
SET choice=
SET /p choice=Would you like to see the license? Enter Y (yes) or N (no): 
IF NOT '%choice%'=='' SET choice=%choice:~0,1%
FOR %%C IN (Y YES) DO IF /I "%choice%"=="%%~C" GOTO :Yes
FOR %%C IN (N NO)  DO IF /I "%choice%"=="%%~C" GOTO :No
ECHO "%choice%" is not valid
ECHO.
GOTO start

:blank
echo Please select an option.
GOTO start

:yes
type "txt\GPL_v3.txt"
pause
GOTO no

:no
mkdir "Output"
where /r c:\users\%USERNAME%\Desktop *.txt >> Output\desktop.txt
echo Finished! Check the "Output" folder.
pause                                        
exit
                                           
