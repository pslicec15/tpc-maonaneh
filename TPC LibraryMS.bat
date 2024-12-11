@echo off

rem Get the absolute path of the batch file's directory
set "batchFilePath=%~dp0"

rem Specify the relative path to your Laravel project
set "relativeProjectPath=tpc-library-management-system"

rem Combine the paths to get the absolute path of the Laravel project
set "absoluteProjectPath=%batchFilePath%\%relativeProjectPath%"

rem Open the Laravel application in the default web browser
start http://192.168.254.121:8000

rem Navigate to the Laravel project folder and start the server in a new command prompt window
cmd /k "cd /d "%absoluteProjectPath%" && php artisan serve --host=192.168.254.121 --port=8000"

