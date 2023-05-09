SET script_dir=%~dp0
SET python_script_path = %1
echo %script_dir%

@set CURRENT_DIRECTORY=%CD%

REM activate miniconda
SET condabin=%script_dir%Miniconda3\condabin
@CALL "%condabin%\conda.bat" activate cc3d


@SET exit_code=0
python %python_script_path% %* 
@SET exit_code= %errorlevel%

goto simulationend

:simulationend
   echo "SIMULATION FINISHED"
   cd %CURRENT_DIRECTORY%

exit /b %exit_code%




