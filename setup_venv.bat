@echo off
echo Creating and using Python virtual environment (.venv)
echo.

echo Step 1: Create virtual environment
python -m venv .venv
echo ✅ Virtual environment created

echo.
echo Step 2: Activate virtual environment
call .venv\Scripts\activate.bat
echo ✅ Virtual environment activated

echo.
echo Step 3: Upgrade pip
python -m pip install --upgrade pip
echo ✅ Pip upgraded

echo.
echo Step 4: Install requirements
pip install -r requirements.txt
echo ✅ Requirements installed

echo.
echo Step 5: Verify installation
python -c "import yfinance; import pandas; print('✅ All packages installed successfully')"

echo.
echo Virtual environment setup complete!
echo To activate manually: .venv\Scripts\activate.bat
echo To deactivate: deactivate