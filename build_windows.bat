@echo off
cd /d "%~dp0"
if not exist .venv (
  py -3 -m venv .venv
)
call .venv\Scripts\activate
python -m pip install --upgrade pip
pip install -r requirements.txt pyinstaller
pyinstaller --noconfirm --clean --windowed --name BookIntelligenceStudio --collect-all PySide6 launch.py
echo.
echo Build output: dist\BookIntelligenceStudio\
pause
