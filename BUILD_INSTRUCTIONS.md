# Minecraft Minimap Mod - Build Instructions

## Quick Start for .mcaddon Import

### Prerequisites
- Node.js and npm installed
- TypeScript compiler

### Steps to Build

**On Windows:**
```bash
build.bat
```

**On macOS/Linux:**
```bash
chmod +x build.sh
./build.sh
```

**Or manually:**
```bash
# Install dependencies
npm install

# Build TypeScript to JavaScript
npm run build

# The compiled files will be in the 'dist/' directory
```

### Import into Minecraft Bedrock

1. **Locate the .mcaddon file:**
   - After running the build script, look for `minecraft-minimap-mod.mcaddon` in the root directory

2. **Open Minecraft Bedrock Edition**

3. **Navigate to:**
   - Settings → Global Resources

4. **Import the mod:**
   - Click "Import" or "Add"
   - Select `minecraft-minimap-mod.mcaddon`
   - Accept the prompt

5. **Create/Open a World:**
   - The mod will now be active in your world
   - Press **Y** to open the Minimap menu

### File Structure

```
minecraft-minimap-mod/
├── manifest.json           # Bedrock pack metadata
├── package.json            # NPM configuration
├── tsconfig.json          # TypeScript configuration
├── scripts/               # Source TypeScript files
│   ├── index.ts
│   └── minimap/
│       ├── minimapCore.ts
│       ├── renderer.ts
│       ├── waypoints.ts
│       └── settings.ts
├── dist/                  # Compiled JavaScript (generated)
├── build_mcaddon/         # Build directory (generated)
└── minecraft-minimap-mod.mcaddon  # Final .mcaddon file (generated)
```

### Troubleshooting

**Issue: Build fails with TypeScript errors**
- Run `npm install` to ensure dependencies are installed
- Check that you're using Node.js 16 or higher

**Issue: .mcaddon won't import**
- Ensure `manifest.json` is in the root of the .mcaddon file
- Verify all compiled `.js` files are in the `scripts/` folder
- Try re-creating the .mcaddon using the build script

**Issue: Mod doesn't show in Minecraft**
- Verify the .mcaddon imported successfully (check Global Resources)
- Try creating a new world with the mod enabled
- Restart Minecraft if needed

## Features

✅ Real-time rotating square minimap
✅ In-game settings menu (Press Y)
✅ Waypoint system (add, edit, delete, navigate)
✅ Entity radar
✅ Customizable display options
✅ Performance optimized with chunk caching

## Support

For issues or questions, check the GitHub repository or modify the source files as needed!
