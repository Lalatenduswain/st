# 🚀 Speedtest CLI Installer - `install-speedtest-cli.sh`

This repository contains a simple and efficient Bash script that automates the process of downloading, installing, and configuring the `st` (Speedtest) CLI binary from a GitHub source.

🔧 Ideal for DevOps Engineers, SysAdmins, or Linux users who frequently need to check internet bandwidth directly from the terminal.

---

## 📌 Features

- 📥 Downloads the latest `st` binary from GitHub
- 🔐 Automatically sets the correct executable permissions
- 📂 Moves the binary to `/usr/bin/` for system-wide access
- ✅ Lightweight and quick setup with no dependencies on external Python/Node modules
- 🧪 Verifies installation after setup

---

## 📖 Installation Guide

### ✅ Pre-requisites

Make sure your system has the following:

- 🐧 Linux OS (Tested on Ubuntu/Debian)
- `curl` - For downloading the binary  
  _Install with: `sudo apt install curl -y`_
- `sudo` privileges – Required to move files into `/usr/bin/`

### 🛠️ Step-by-Step Setup

```bash
# 1. Clone the repository
git clone https://github.com/Lalatenduswain/install-speedtest-cli.sh.git

# 2. Change into the directory
cd install-speedtest-cli.sh

# 3. Make the script executable
chmod +x install-speedtest-cli.sh

# 4. Run the script
./install-speedtest-cli.sh
