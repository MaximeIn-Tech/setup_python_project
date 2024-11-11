@echo off
:: Get the directory where the script is located
set "script_dir=%~dp0"

:: Prompt for folder name and path
set /p folder_name="Enter the folder name: "
set /p path="Enter the path where the folder should be created: "

:: Define the project path
set "project_path=%path%\%folder_name%"

:: Create the main project folder
mkdir "%project_path%"

:: 1. Create a Python virtual environment
python -m venv "%project_path%\venv"

:: 2. Create resources folder with images and videos subfolders
mkdir "%project_path%\ressources\images"
mkdir "%project_path%\ressources\videos"

:: 3. Create a .env file
type nul > "%project_path%\.env"

:: 4. Copy the .gitignore file from the script's directory to the new folder
copy "%script_dir%.gitignore" "%project_path%\.gitignore"
echo .gitignore file copied from script directory.

:: 5. Create a requirements.txt file
type nul > "%project_path%\requirements.txt"

:: 6. Create a main.py file
echo if __name__ == "__main__": > "%project_path%\main.py"
echo     print("Hello, World!") >> "%project_path%\main.py"

echo Project "%folder_name%" has been set up at "%project_path%"

:: Pause to allow the user to see the process
pause
