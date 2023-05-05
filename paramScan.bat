@ECHO OFF
@SET PREFIX_CC3D=C:\CompuCell3D-py3-64bit
@SET PYTHON_INSTALL_PATH=C:\CompuCell3D-py3-64bit\Python37
@SET PATH=%PYTHON_INSTALL_PATH%\Library\bin;%PATH%

@SET PYTHONPATH=%PREFIX_CC3D%\lib\site-packages

@set CURRENT_DIRECTORY=%CD%


REM removing duplicates from PATH environment variable -
REM this variable can get recusrive addodn with each subsequent run resulting in windows shell error -
REM also a good idea to keep PATH short anyway
REM a bit ugly but works...

REM "%PYTHON_INSTALL_PATH%\python" "%PREFIX_CC3D%\lib\site-packages\cc3d\core\envVarSanitizer.py" "PATH" > "%TMP%\path_modifier.bat"
REM CALL  "%TMP%\path_modifier.bat"
REM @del "%TMP%\path_modifier.bat"



cd %PREFIX_CC3D%

@SET exit_code=0
"%PYTHON_INSTALL_PATH%\python" "%PYTHONPATH%\cc3d\core\param_scan\parameter_scan_run.py" %* --install-dir="%PREFIX_CC3D%"
@SET exit_code= %errorlevel%

goto simulationend

:simulationend
   echo "SIMULATION FINISHED"
   cd %CURRENT_DIRECTORY%

exit /b %exit_code%
