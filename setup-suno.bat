@echo off
chcp 65001 >nul

echo.
echo === Suno Prompt Builder - SETUP + PUSH ===
echo.

cd /d %~dp0

echo Current folder: %cd%
echo.

git init -b main
git remote add origin https://github.com/DemosLady/suno-prompt-builder.git

echo.
echo === Adding files and pushing ===
echo.

git add .
git commit -m "initial release with GA and ads"
git push -u origin main

echo.
echo === Done! Now go to: ===
echo https://github.com/DemosLady/suno-prompt-builder/settings/pages
echo Set Source: Deploy from branch - main - root - Save
echo.
echo Your site will be at:
echo https://demoslady.github.io/suno-prompt-builder/
echo.
pause
