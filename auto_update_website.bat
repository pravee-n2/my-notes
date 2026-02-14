@echo off
echo Building Quartz site...
npx quartz build --output docs

echo.
echo Adding changes to Git...
git add .

echo.
echo Committing...
git commit -m "update site"

echo.
echo Pushing to GitHub...
git push

echo.
echo Done! Site will update in about 1 minute.
echo.
set /p =Press Enter to close...
