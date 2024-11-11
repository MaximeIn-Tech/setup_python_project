# Setup Python Project

## Project Overview

This project is a simple piece of code that aims to automate the creation of a new python project.

No more time spent running the commands yourself, the script does it for you.

**What will it do ?**

- Create the folder
- Create the virtual environment
- Create a main.py file
- Create a requirements.txt file
- Create .env file
- Copy the .gitignore file from the folder to your new project folder.

This allows you to bootstrap your Python project quickly.

## How to use it?

### MacOS / Linux

You can clone the repository, navigate to the folder and give the permission to run the shell script:

`chmod +x setup_project.sh`

Once it is done, you can put the folder wherever you want, create an alias of the shell script and double click it to run the script.

Also remember to enter your virtual environment by running this command in your terminal, within the folder:

`source venv/bin/activate`

### Windows

For my fellow Windows users, you can use the `.bat` file that is in the folder.

## Git Ignore file

The git ignore file is a generic git ignore file for Python.

Feel free to edit it so that it fits your need.
