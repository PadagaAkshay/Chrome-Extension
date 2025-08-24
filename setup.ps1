# Productivity Tracker Setup Script
# Created by Akshay

Write-Host "================================" -ForegroundColor Cyan
Write-Host "Productivity Tracker Setup" -ForegroundColor Yellow
Write-Host "Created by Akshay" -ForegroundColor Green
Write-Host "================================" -ForegroundColor Cyan

Write-Host ""
Write-Host "[1/3] Installing backend dependencies..." -ForegroundColor Yellow

# Navigate to backend directory
Set-Location -Path "backend"

# Install npm dependencies
try {
    npm install
    if ($LASTEXITCODE -ne 0) {
        throw "npm install failed"
    }
    Write-Host "✅ Dependencies installed successfully!" -ForegroundColor Green
} catch {
    Write-Host "❌ ERROR: Failed to install dependencies" -ForegroundColor Red
    Write-Host "Please ensure Node.js and npm are installed" -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host ""
Write-Host "[2/3] Starting backend server..." -ForegroundColor Yellow

# Start server in background
Start-Process powershell -ArgumentList "-NoExit", "-Command", "node server.js" -WindowStyle Normal

# Wait a moment for server to start
Start-Sleep -Seconds 2

Write-Host "✅ Backend server started!" -ForegroundColor Green

Write-Host ""
Write-Host "[3/3] Setup Instructions:" -ForegroundColor Yellow
Write-Host ""
Write-Host "1. Backend server is running at http://localhost:3000" -ForegroundColor White
Write-Host "2. Load the Chrome extension:" -ForegroundColor White
Write-Host "   - Open Chrome and go to chrome://extensions/" -ForegroundColor Gray
Write-Host "   - Enable 'Developer mode'" -ForegroundColor Gray
Write-Host "   - Click 'Load unpacked'" -ForegroundColor Gray
Write-Host "   - Select the 'chrome-extension' folder" -ForegroundColor Gray
Write-Host ""
Write-Host "3. Dashboard URL: http://localhost:3000/dashboard" -ForegroundColor White
Write-Host ""

# Wait and open dashboard
Write-Host "Opening dashboard in default browser..." -ForegroundColor Yellow
Start-Sleep -Seconds 2
Start-Process "http://localhost:3000/dashboard"

Write-Host ""
Write-Host "🎉 Setup complete! The extension is ready to use." -ForegroundColor Green
Write-Host ""
Write-Host "Extension features:" -ForegroundColor Cyan
Write-Host "- ⏱️  Real-time website tracking" -ForegroundColor White
Write-Host "- 📊 Productivity analytics" -ForegroundColor White
Write-Host "- 📈 Weekly reports and insights" -ForegroundColor White
Write-Host "- 📱 Beautiful popup dashboard" -ForegroundColor White
Write-Host "- 💾 Data export functionality" -ForegroundColor White
Write-Host ""
Read-Host "Press Enter to exit"
