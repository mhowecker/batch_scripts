@echo off

set cur_dir=%pwd%
cd %1
if %errorlevel% neq 0 exit /b %errorlevel%
if "%cd:~-13%" neq "diplomprojekt" (
    echo not a da-directory
    exit /b
)

for %%x in (doku hobbit mbit_ws_dev) do (
    cd %%x
    git pull
    code .
    cd ..
)