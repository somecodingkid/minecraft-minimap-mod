#!/bin/bash

# Build the TypeScript files
npm run build

# Create the .mcaddon structure
mkdir -p build_mcaddon/scripts/minimap

# Copy manifest
cp manifest.json build_mcaddon/

# Copy compiled JavaScript files
cp dist/index.js build_mcaddon/scripts/
cp dist/minimap/*.js build_mcaddon/scripts/minimap/

# Create the .mcaddon file (it's just a renamed .zip)
cd build_mcaddon
zip -r ../minecraft-minimap-mod.mcaddon .
cd ..

echo "✅ .mcaddon file created: minecraft-minimap-mod.mcaddon"
echo "📦 Ready to import into Minecraft Bedrock!"
