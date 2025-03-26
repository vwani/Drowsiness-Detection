@echo off
setlocal enabledelayedexpansion

rem Change this to your parent folder path
set "PARENT_FOLDER=C:\Vinaya\Drowsiness Detection\dataset\images"
set "NESTED_FOLDER=%PARENT_FOLDER%\Non Drowsy"

cd /d "%NESTED_FOLDER%"

for %%F in (*) do (
    set "newname=awake-%%F"
    ren "%%F" "!newname!"
    move "!newname!" "%PARENT_FOLDER%"
)

echo Done!
pause
