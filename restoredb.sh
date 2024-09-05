#!/bin/bash

# MySQL database restore script
# Author: Kurniawan
# GitHub: https://github.com/dypras666/restoredb.sh

# Detect the Linux distribution
if [ -f /etc/os-release ]; then
    . /etc/os-release
    OS=$NAME
elif type lsb_release >/dev/null 2>&1; then
    OS=$(lsb_release -si)
else
    OS=$(uname -s)
fi

# MySQL connection details
DB_USER="username_root"
DB_PASS="PASSWORD"
DB_NAME="nama_database"

# Backup file location
BACKUP_FILE="/home/lokasidb.sql"

# Function to install MySQL client if not present
install_mysql_client() {
    if ! command -v mysql &> /dev/null; then
        echo "MySQL client not found. Installing..."
        case $OS in
            "Ubuntu")
                sudo apt-get update
                sudo apt-get install -y mysql-client
                ;;
            "CentOS Linux" | "AlmaLinux")
                sudo yum install -y mysql
                ;;
            *)
                echo "Unsupported operating system: $OS"
                exit 1
                ;;
        esac
    fi
}

# Install MySQL client if necessary
install_mysql_client

# Restore the database
mysql -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < "$BACKUP_FILE"

# Check if the restore was successful
if [ $? -eq 0 ]; then
    echo "Database restore completed successfully."
else
    echo "Error: Database restore failed."
    exit 1
fi
