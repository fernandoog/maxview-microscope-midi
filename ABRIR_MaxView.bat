@echo off
cd /d "%~dp0"
set MAX="C:\ProgramData\Ableton\Live 12 Suite\Resources\Max\Max.exe"
if not exist %MAX% set MAX="C:\Program Files\Cycling '74\Max 9\Max.exe"
start "" %MAX% "%cd%\MaxView.maxpat"
