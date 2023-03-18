# Removing sensitive data from a repository


## `git rm --cached FILE_NAME`

`git rm --cached $(git ls-files -i -c -X .gitignore)`

https://www.baeldung.com/git-remove-file-without-deleting-it


## Clear git history

https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository

https://github.com/newren/git-filter-repo

## Tips

Most `.bat` need to launch at effected directory.

`get_file_paths.bat`

This batch file collect all file paths with a specified name in a folder and its subfolders, and write them to a file.

`get_files_paths_in_folder.bat`

Collect file paths in folder. Search for all files in the specified folder and its subfolders, and write the results to a file.

`filter.bat`

Launch git-filter-repo `git filter-repo --invert-paths --path PATH-TO-YOUR-FILE-WITH-SENSITIVE-DATA` for all paths in a file.

`filter_in_folder.bat`

Execute git-filter-repo procedure for all files (paths) in folder.





