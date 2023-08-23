@echo off
setlocal enabledelayedexpansion
set AppDir=%~dp0
set R="%AppDir%R\bin\x64\R.exe"
set runfile="%AppDir%run.R"
%R% --no-save --slave -f %runfile%
exit 0
