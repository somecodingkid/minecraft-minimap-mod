@echo off
REM Build the TypeScript files
call npm run build

REM Create the .mcaddon structure
if not exist "build_mcaddon\scripts\minimap" mkdir build_mcaddon\scripts\minimap

REM Copy manifest
copy manifest.json build_mcaddon\

REM Copy compiled JavaScript files
copy dist\index.js build_mcaddon\scripts\
xcopy dist\minimap\*.js build_mcaddon\scripts\minimap\ /Y

REM Create the .mcaddon file (it's just a renamed .zip)
cd build_mcaddon
powershell -Command "Compress-Archive -Path * -DestinationPath ..\minecraft-minimap-mod.mcaddon -Force"
cd ..

echo ✅ .mcaddon file created: minecraft-minimap-mod.mcaddon
echo 📦 Ready to import into Minecraft Bedrock!
pause
