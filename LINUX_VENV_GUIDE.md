# Linux Virtual Environment Setup Guide

## 🐧 Prerequisites

### Install Python3 and pip (if not already installed):

**Ubuntu/Debian:**
```bash
sudo apt update
sudo apt install python3 python3-pip python3-venv
```

**CentOS/RHEL/Fedora:**
```bash
# CentOS/RHEL
sudo yum install python3 python3-pip

# Fedora
sudo dnf install python3 python3-pip
```

**Arch Linux:**
```bash
sudo pacman -S python python-pip
```

## 🚀 Quick Setup

### Method 1: Use the setup script
```bash
# Make script executable
chmod +x setup_venv_linux.sh

# Run the script
./setup_venv_linux.sh
```

### Method 2: Manual setup
```bash
# 1. Create virtual environment
python3 -m venv .venv

# 2. Activate virtual environment
source .venv/bin/activate

# 3. Upgrade pip
python -m pip install --upgrade pip

# 4. Install requirements
pip install -r requirements.txt

# 5. Verify installation
python -c "import yfinance; import pandas; print('Success!')"
```

## 📋 Daily Usage

### Activate virtual environment:
```bash
source .venv/bin/activate
```

### Check if activated (you should see (.venv) in prompt):
```bash
(.venv) user@machine:~/project$ 
```

### Install packages:
```bash
pip install package_name
```

### Run Jupyter Notebook:
```bash
jupyter notebook
```

### Deactivate when done:
```bash
deactivate
```

## 🔧 Useful Commands

### Check Python location:
```bash
which python
# Should show: /path/to/your/project/.venv/bin/python
```

### List installed packages:
```bash
pip list
```

### Generate requirements.txt:
```bash
pip freeze > requirements.txt
```

### Remove virtual environment:
```bash
rm -rf .venv
```

## 🐍 Python Version Management

### Check Python version:
```bash
python --version
```

### Use specific Python version:
```bash
# If you have multiple Python versions
python3.9 -m venv .venv
# or
python3.11 -m venv .venv
```

## 🔒 Permissions

### Make sure the script is executable:
```bash
chmod +x setup_venv_linux.sh
```

### If you get permission errors:
```bash
# For pip installations
python -m pip install --user package_name

# Or use sudo (not recommended for venv)
sudo pip install package_name
```

## 📁 Project Structure
```
your_project/
├── .venv/                 # Virtual environment (don't commit to git)
├── requirements.txt       # Package dependencies
├── setup_venv_linux.sh   # Setup script
├── .gitignore            # Should include .venv/
└── your_notebooks.ipynb  # Your Python files
```

## 🚫 Troubleshooting

### If venv module not found:
```bash
# Install python3-venv
sudo apt install python3-venv  # Ubuntu/Debian
sudo yum install python3-venv  # CentOS/RHEL
```

### If pip not found in venv:
```bash
# Recreate virtual environment
rm -rf .venv
python3 -m venv .venv --with-pip
```

### If activation doesn't work:
```bash
# Try full path
source /full/path/to/your/project/.venv/bin/activate
```

## 🎯 Best Practices

1. **Always activate** before installing packages
2. **Use requirements.txt** for reproducibility
3. **Don't commit .venv** to version control
4. **One venv per project**
5. **Deactivate when switching projects**