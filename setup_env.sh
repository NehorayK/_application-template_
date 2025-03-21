#!/bin/bash

# Define a function to check for a command and prompt installation if missing.
check_command() {
    if ! command -v "$1" &> /dev/null; then
        echo "$1 is not installed."
        read -p "Do you want to install $1? [Y/n] " answer
        if [[ $answer == [Yy]* ]]; then
            # Update with your distribution's package manager install command.
            sudo apt-get install -y "$2"
        else
            echo "Please install $1 manually and re-run the script."
            exit 1
        fi
    else
        echo "$1 is installed."
    fi
}

# List of required tools and corresponding package names (adapt as needed)
check_command python3 python3
check_command pip3 python3-pip
check_command pipx pipx
check_command python3-venv python3-venv
check_command makeself makeself
check_command sqlite3 sqlite3

# Check for virtualization tool (choose one: VirtualBox, VMware, or KVM)
# Example check for VirtualBox:
check_command VBoxManage virtualbox

echo "All required tools are installed."