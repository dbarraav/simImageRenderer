SET script_dir=%~dp0
echo %script_dir%

@set CURRENT_DIRECTORY=%CD%

REM activate miniconda
SET condabin=%script_dir%Miniconda3\condabin

::start "" "C:\Windows\system32\cmd.exe" /K "@CALL "%condabin%\conda.bat" activate cc3d"
start  cmd.exe /k @CALL "%condabin%\conda.bat" activate cc3d
::conda info --envs



