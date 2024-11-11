#!/bin/bash

# Get the directory where the script is located
script_dir="$(cd "$(dirname "$0")" && pwd)"

# Prompt for folder name and path
read -p "Enter the folder name: " folder_name
read -p "Enter the path where the folder should be created: " path

# Define the project path
project_path="$path/$folder_name"

# Create the main project folder
mkdir -p "$project_path"

# 1. Create a Python3 virtual environment
python3 -m venv "$project_path/venv"

# 2. Create resources folder with images and videos subfolders
mkdir -p "$project_path/ressources/images"
mkdir -p "$project_path/ressources/videos"

# 3. Create a .env file
touch "$project_path/.env"

# 4. Copy the .gitignore file from the script's directory to the new folder
cp "$script_dir/.gitignore" "$project_path/.gitignore"
echo ".gitignore file copied from script directory."

# 5. Create a requirements.txt file
touch "$project_path/requirements.txt"

# 6. Create a main.py file
cat > "$project_path/main.py" << EOL
if __name__ == "__main__":
    print("Hello, World!")
EOL

echo "Project '$folder_name' has been set up at $project_path"

# Pause to allow the user to see the process
read -p "Press any key to exit..."
