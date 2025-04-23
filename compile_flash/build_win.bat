@echo off
:: Set the script filename
set SCRIPT_NAME=flashsn8.py
set OUTPUT_NAME=flashsn8.exe
set OUTDIR_NAME=win_x86-64

:: Run Nuitka to build the executable
nuitka --standalone --remove-output --output-dir=%OUTDIR_NAME% --output-filename=%OUTPUT_NAME% --assume-yes-for-downloads --user-package-configuration-file=config.yaml %SCRIPT_NAME%

echo Build complete: %OUTPUT_NAME%
pause