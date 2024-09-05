# MySQL Database Restore Script

[![GitHub stars](https://img.shields.io/github/stars/dypras666/restoredb.svg)](https://github.com/dypras666/restoredb/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/dypras666/restoredb.svg)](https://github.com/dypras666/restoredb/network/members)

This script automates the process of restoring a MySQL database from a SQL dump file. It's compatible with Ubuntu and CentOS/AlmaLinux.

## Developer

**Kurniawan**

[![Instagram](https://img.shields.io/badge/Instagram-%40sedotphp-E4405F?style=flat&logo=instagram&logoColor=white)](https://www.instagram.com/sedotphp)

Jika Anda memiliki pertanyaan atau ingin berkolaborasi, jangan ragu untuk menghubungi saya melalui Instagram.

## Features

- Automatic detection of the operating system (Ubuntu or CentOS/AlmaLinux)
- Automatic installation of MySQL client if not present
- Database restoration from a SQL dump file

## Prerequisites

- Bash shell
- Sudo privileges

## Usage

1. Clone this repository:
   ```
   git clone https://github.com/dypras666/restoredb.git
   ```

2. Navigate to the script directory:
   ```
   cd restoredb.sh
   ```

3. Make the script executable:
   ```
   chmod +x restoredb.sh
   ```

4. Edit the script to update the MySQL connection details and backup file location:
   ```bash
   DB_USER="your_username"
   DB_PASS="your_password"
   DB_NAME="your_database_name"
   BACKUP_FILE="/path/to/your/backup.sql"
   ```

5. Run the script:
   ```
   ./restoredb.sh
   ```

## Operating System Compatibility

This script is designed to work on:
- Ubuntu
- CentOS
- AlmaLinux

The script will automatically detect your operating system and install the necessary MySQL client if it's not already present.

## Cron Job Setup

To run this script automatically at regular intervals, you can set up a cron job. Here's an example that runs the script daily at 2:00 AM:

1. Open the crontab file:
   ```
   crontab -e
   ```

2. Add the following line:
   ```
   0 2 * * * /path/to/restoredb.sh
   ```

3. Save and exit the crontab file.

## Troubleshooting

If you encounter any issues:

1. Ensure you have sudo privileges.
2. Check that the MySQL connection details are correct.
3. Verify that the backup file exists and is readable.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## Dukung Proyek Ini

Jika Anda merasa proyek ini bermanfaat, pertimbangkan untuk memberikan dukungan dengan cara berikut:

- **Star Repository**: Klik tombol ⭐️ di bagian atas halaman untuk menunjukkan apresiasi Anda.
- **Fork Repository**: Jika Anda ingin berkontribusi atau membuat versi Anda sendiri, klik tombol 'Fork' di kanan atas halaman.

## License

This project is open source and available under the [MIT License](LICENSE).
