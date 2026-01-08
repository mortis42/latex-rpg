@echo off
cd /d "%~dp0"

where pandoc >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Pandoc is not installed or it is not in the PATH.
    echo Install Pandoc from https://pandoc.org/installing.html
    pause
    exit /b 1
)

echo|set /p="Generating pdf"
start /b "" cmd /c "pandoc main.md --syntax-highlighting=none --template=tex/template.tex --pdf-engine=xelatex --filter pandoc-latex-environment --lua-filter=filters/filters.lua -o output\main.pdf 2>nul"
:waitloop
timeout /t 1 >nul
tasklist | find /i "pandoc.exe" >nul
if %errorlevel%==0 (
    set /p="." <nul
    goto waitloop
)

if exist output\main.pdf (
    echo.
    echo PDF successfully generated in output\main.pdf
) else (
    echo.
    echo [ERROR] There was a problem generating the PDF.
)

pause
