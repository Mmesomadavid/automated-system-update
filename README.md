# Automated System Update Script

## Description
This project provides a simple shell script that automates the process of updating and upgrading the system packages on a Linux machine. It also cleans up unnecessary files after the upgrade. The script can be run manually or scheduled to run automatically using `cron`.

## Usage

### Step 1: Clone the Repository
First, clone the repository to your local machine:
```sh
git clone https://github.com/Mmesomadavid/automated-system-update.git
cd automated-system-update
```
### Step 2: Make the Script Executable
Change the permissions of the script to make it executable:
```sh
chmod +x update_system.sh
```

### Step3: Run the Script Manually
You can run the script manually to update and upgrade your system packages:
```sh
./update_system.sh
```

### Step 4: Schedule the Script with Cron
To automate the script, you can schedule it to run at regular intervals using cron.

#### 1. Open crontab file
```sh
crontab -e
```

#### 2. Add a new line to schedule the script. For example, to run the script every Sunday at 2 AM, add the following line:
```sh
0 2 * * 0 /path/to/your/update_system.sh
```

### Step 5: Verify the Cron Job
List your cron jobs to ensure the new job was added successfully:
```sh
crontab -l
```


# Script Details
## update_system.sh
```sh
#!/bin/bash

# Update package list and upgrade installed packages
sudo apt update && sudo apt upgrade -y

# Clean up unnecessary files
sudo apt autoremove -y
sudo apt clean

echo "System update and upgrade completed successfully."
```
