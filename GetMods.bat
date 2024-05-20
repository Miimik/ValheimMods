@echo off

setlocal

REM Определяем путь к папке, где находится этот .bat файл
set "REPO_DIR=%~dp0Valheim"

REM URL репозитория
set "REPO_URL=https://github.com/Miimik/ValheimMods.git"

REM Проверка наличия папки .git
if not exist "%REPO_DIR%\.git" (
    echo clone...
    git clone "%REPO_URL%" "%REPO_DIR%"
) else (
    echo Update...
    cd "%REPO_DIR%"
    git pull origin master
)

echo Good.
pause

endlocal
