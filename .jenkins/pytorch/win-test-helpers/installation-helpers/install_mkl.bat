if "%REBUILD%"=="" (
  curl --retry 3 -C - -k https://s3.amazonaws.com/ossci-windows/mkl_2020.2.254.7z --output %TMP_DIR_WIN%\mkl.7z
  if errorlevel 1 exit /b
  if not errorlevel 0 exit /b
  7z x -aoa %TMP_DIR_WIN%\mkl.7z -o%TMP_DIR_WIN%\mkl
  if errorlevel 1 exit /b
  if not errorlevel 0 exit /b
)
set CMAKE_INCLUDE_PATH=%TMP_DIR_WIN%\mkl\include
set LIB=%TMP_DIR_WIN%\mkl\lib;%LIB%
