@ECHO off
type "txt\ascii.txt"
echo Rocco Lake 2024, licensed under GNU GPL v3.
:main
choice /c yn /m "Would you like to see the license? "
if %errorlevel% equ 2 goto no
if %errorlevel% equ 1 goto yes
goto main

:blank
echo Please select an option.
GOTO main

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
                                           
