#!/bin/bash

echo "🐧 Setting up Python Virtual Environment (.venv) on Linux"
echo ""

# Check if python3 is available
if ! command -v python3 &> /dev/null; then
    echo "❌ Python3 not found. Please install Python3 first."
    echo "   Ubuntu/Debian: sudo apt update && sudo apt install python3 python3-pip python3-venv"
    echo "   CentOS/RHEL: sudo yum install python3 python3-pip"
    echo "   Arch: sudo pacman -S python python-pip"
    exit 1
fi

# Step 1: Create virtual environment
echo "Step 1: Creating virtual environment..."
python3 -m venv .venv
echo "✅ Virtual environment created"

# Step 2: Activate virtual environment
echo ""
echo "Step 2: Activating virtual environment..."
source .venv/bin/activate
echo "✅ Virtual environment activated"

# Step 3: Upgrade pip
echo ""
echo "Step 3: Upgrading pip..."
python -m pip install --upgrade pip
echo "✅ Pip upgraded"

# Step 4: Install requirements
echo ""
echo "Step 4: Installing requirements..."
if [ -f "requirements.txt" ]; then
    pip install -r requirements.txt
    echo "✅ Requirements installed"
else
    echo "⚠️  requirements.txt not found. Installing essential packages..."
    pip install yfinance pandas matplotlib jupyter
    echo "✅ Essential packages installed"
fi

# Step 5: Verify installation
echo ""
echo "Step 5: Verifying installation..."
python -c "import yfinance; import pandas; print('✅ All packages installed successfully')"

echo ""
echo "🎉 Virtual environment setup complete!"
echo ""
echo "📋 Usage Instructions:"
echo "  To activate:   source .venv/bin/activate"
echo "  To deactivate: deactivate"
echo "  To run Jupyter: jupyter notebook"
echo ""
echo "🔧 Current environment: $(which python)"