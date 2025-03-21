# application-template

## This repository provides a basic template for setting up a Python 3 application in a DevOps environment.

### Repository Setup
	1.	Create a GitHub Repository named application-template.
	2.	Protect the main branch so it can only be updated via pull requests.
	3.	Test the Repository by creating a pull request to confirm branch protection works.

### Required Tools
	•	Python 3
	•	python3-pip
	•	python3-pipx
	•	python3-venv (or pipenv or poetry)
	•	makeself
	•	sqlite3
	•	Virtualization tool (VirtualBox, VMware, or KVM)

### Shell Script

Include a shell script (e.g., setup_env.sh) that:
	•	Checks if all required tools are installed.
	•	Offers to install and configure missing tools.
	•	Ensures your environment is ready for Python 3 development.

### Virtual Machine Setup
	1.	Create a VM using your preferred Linux distro.
	2.	Mount the project onto the VM (e.g., shared folder).
	3.	Run the shell script to verify/install required tools.

### Python Virtual Environment
	•	Use pipenv (or your chosen tool) to manage Python 3 dependencies:
	•	flask, flask-sqlalchemy, flask-alchemyview, bootstrap-flask, quart, db-sqlite3
	•	Activate the virtual environment and confirm all packages are installed.

### VS Code SSH
	•	Install and enable OpenSSH on the VM.
	•	Use the Remote - SSH extension in VS Code:
	1.	Add the VM’s IP and credentials to your ~/.ssh/config.
	2.	Connect from VS Code to develop and run the project remotely.

See the [Task](TASK.md) presented in the class.

This simple structure ensures that new developers can clone the repository, set up
the environment, and start working on the project quickly and safely.

