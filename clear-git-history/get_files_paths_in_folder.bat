@echo off

echo Collecting files paths...

REM This batch file will run a command with a certain path taken from a file using a for loop

REM set the path to the folder you want to search
set searchPath=.

REM set the path to the file where you want to write the results
set outputPath=paths.txt

REM use the "dir" command to recursively search for all files in the specified folder and its subfolders,
REM and write the results to a temporary file
dir /B /S /A:-D "%searchPath%" > paths.txt

pause