Copy code
@echo off

REM This batch file will collect all file paths with a specified name in a folder and its subfolders, and write them to a file

REM set the name of the file you want to search for
set fileName=data_raw.csv

REM set the path to the folder you want to search
set searchPath=.

REM set the path to the file where you want to write the results
set outputPath=paths.txt

REM use the "dir" command to recursively search for all files with the specified name in the specified folder and its subfolders,
REM and write the results to a temporary file
dir /B /S /A:-D "%searchPath%\%fileName%" > paths.txt

pause