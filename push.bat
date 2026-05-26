@echo off
chcp 65001 >nul

cd /d %~dp0

if "%~1"=="" (
    set MSG=update site
) else (
    set MSG=%*
)

echo.
echo === Suno Prompt Builder - Push to GitHub ===
echo Message: %MSG%
echo.

git add .
git commit -m "%MSG%"
git push

echo.
echo === Done! GitHub Pages will update in ~1 minute ===
echo https://demoslady.github.io/suno-prompt-builder/
echo.
pause
