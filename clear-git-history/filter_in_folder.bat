@echo off

echo Collecting files paths...

REM This batch file will run a command with a certain path taken from a file using a for loop

REM set the path to the folder you want to search
set searchPath=.

REM set the path to the file where you want to write the results
set outputPath=paths.txt

REM use the "dir" command to recursively search for all files in the specified folder and its subfolders,
REM and write the results to a temporary file
dir /B /S /A:-D "%searchPath%" > tmp.txt

REM loop through the lines of the temporary file and write each line to the output file
for /F "tokens=*" %%a in (tmp.txt) do (
  echo %%a >> "%outputPath%"
)

REM delete the temporary file
del tmp.txt

REM pause to keep the command prompt window open after the loop finishes

echo Starting git-filter-repo...

pause

REM set the path to the file containing the paths
set pathToFile=paths.txt

REM start the for loop to read each line in the file
for /F "tokens=*" %%a in (%pathToFile%) do (
  python git-filter-repo --force --invert-paths --path "%%a"
  )
)

echo

echo Deleting paths.txt ...

pause

del paths.txt