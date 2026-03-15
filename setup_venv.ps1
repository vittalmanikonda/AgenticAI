# PowerShell script to setup Python virtual environment
Write-Host "Setting up Python Virtual Environment (.venv)" -ForegroundColor Green
Write-Host ""

# Step 1: Create virtual environment
Write-Host "Step 1: Creating virtual environment..." -ForegroundColor Yellow
python -m venv .venv
Write-Host "✅ Virtual environment created" -ForegroundColor Green

# Step 2: Activate virtual environment
Write-Host ""
Write-Host "Step 2: Activating virtual environment..." -ForegroundColor Yellow
& .\.venv\Scripts\Activate.ps1
Write-Host "✅ Virtual environment activated" -ForegroundColor Green

# Step 3: Upgrade pip
Write-Host ""
Write-Host "Step 3: Upgrading pip..." -ForegroundColor Yellow
python -m pip install --upgrade pip
Write-Host "✅ Pip upgraded" -ForegroundColor Green

# Step 4: Install requirements
Write-Host ""
Write-Host "Step 4: Installing requirements..." -ForegroundColor Yellow
pip install -r requirements.txt
Write-Host "✅ Requirements installed" -ForegroundColor Green

# Step 5: Verify installation
Write-Host ""
Write-Host "Step 5: Verifying installation..." -ForegroundColor Yellow
python -c "import yfinance; import pandas; print('✅ All packages installed successfully')"

Write-Host ""
Write-Host "🎉 Virtual environment setup complete!" -ForegroundColor Green
Write-Host ""
Write-Host "To activate manually:" -ForegroundColor Cyan
Write-Host "  PowerShell: .\.venv\Scripts\Activate.ps1" -ForegroundColor White
Write-Host "  CMD: .venv\Scripts\activate.bat" -ForegroundColor White
Write-Host ""
Write-Host "To deactivate: deactivate" -ForegroundColor Cyan