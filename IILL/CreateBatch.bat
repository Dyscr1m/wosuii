@echo off
setlocal enabledelayedexpansion
set "current_dir=%~dp0"
set "new_batch_file=%current_dir%ZZ-NBF.bat"
echo @echo off > "%new_batch_file%"
echo Batch file "ZZ-NBF.bat" created in "%current_dir%"
endlocal
