# Hidden Files Recovery Script 💾

Hidden Files Recovery Script by CHXRITH! This batch script is designed to assist in recovering hidden files from a flash drive by removing the hidden, read-only, system, and archive attributes.

## Features

- **User Interaction:** Users are prompted to input the letter of the flash drive.
- **Drive Validation:** Ensures the validity of the entered drive letter and existence of the specified drive.
- **Attribute Modification:** Utilizes the `attrib` command to remove the hidden, read-only, system, and archive attributes from all files and directories on the specified flash drive.
- **Error Handling:** Provides clear feedback in case of invalid drive letters or errors during the process.

## How to Use

1. Save the script as a `.bat` file.
2. Double-click to run the script.
3. Enter the letter of the flash drive when prompted.
4. Hidden files will be recovered, and a success message will be displayed.

**Caution:** Use this script cautiously, especially on important data. Modifying attributes on system files may cause issues.

## Example

```batch
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
