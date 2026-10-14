# Linux System Report Generator

A simple and lightweight Bash script that gathers essential system metrics from a Linux computer and compiles them into a clean, human-readable text file.

## Collected Information
* **Hostname**
* **Kernel version**
* **Disk usage**
* **Memory usage**
* **Top running processes** (sorted by CPU utilization)

## How to Run the Script

1. **Clone the repository** (or download the script file).
2. **Open your terminal** and navigate to the project folder.
3. **Make the script executable** by running:
   ```bash
   chmod +x system_report.sh
   ```
4. **Execute the script**:
   ```bash
   ./system_report.sh
   ```
5. **View the results**: The script will generate or overwrite a file named `system-report.txt` in the same directory.
