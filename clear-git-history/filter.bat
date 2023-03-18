REM set the path to the file containing the paths
set pathToFile=paths.txt

REM start the for loop to read each line in the file
for /F "tokens=*" %%a in (%pathToFile%) do (
  python git-filter-repo --force --invert-paths --path "%%a"
  )

pause