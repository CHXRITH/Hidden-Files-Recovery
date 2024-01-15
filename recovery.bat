@echo off
:label
cls
echo Hidden files recovery by CHXRITH
set /p disk_flash="Enter Flash drive letter (e.g., D, E, F): "
if not exist "%disk_flash%:\" (
    echo Invalid drive letter or drive does not exist.
    goto label
)
cd /D "%disk_flash%:"
if %errorlevel%==1 goto label
attrib -h -r -s -a /D /S
echo Hidden files have recovered successfully!
pause
