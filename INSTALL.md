# Chrome Extension Installation Guide

## Quick Start

1. **Backend Setup** (Choose one):
   - Run `setup.bat` (Windows Batch)
   - Run `setup.ps1` (PowerShell)
   - Or manually: `cd backend && npm install && node server.js`

2. **Chrome Extension Installation**:
   - Open Chrome browser
   - Navigate to `chrome://extensions/`
   - Enable "Developer mode" (toggle in top-right)
   - Click "Load unpacked"
   - Select the `chrome-extension` folder
   - The extension icon should appear in your toolbar

3. **Verify Installation**:
   - Click the extension icon to open the popup
   - Visit the dashboard at `http://localhost:3000/dashboard`
   - Start browsing to see tracking in action!

## Features Overview

### Extension Popup
- **Today Tab**: Current day's website usage
- **Week Tab**: 7-day usage trends
- **Analytics Tab**: Productivity score and insights

### Web Dashboard
- Real-time usage statistics
- Visual charts and graphs
- Category-based analysis
- Productivity scoring
- Weekly insights and recommendations

### Automatic Features
- Background website tracking
- Smart categorization (Productive/Social/Entertainment/Other)
- Local and server-side data storage
- Privacy-focused (all data stays on your machine)

## Troubleshooting

### Extension Not Loading
- Ensure manifest.json has no syntax errors
- Check that all files are in the chrome-extension folder
- Verify Chrome Developer mode is enabled

### Backend Connection Issues
- Ensure Node.js is installed
- Check that port 3000 is available
- Verify the server started successfully

### No Data Showing
- Allow some browsing time for data to accumulate
- Check browser console for errors
- Ensure the extension has proper permissions

## Support

This extension was created by **Akshay** as a comprehensive productivity tracking solution. For issues or questions, check the README.md file for detailed documentation.
