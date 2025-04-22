# 🚀 Speedtest CLI Installer – `install-speedtest-cli.sh`

Welcome to the **Speedtest CLI Installer** repo!  
This project contains a lightweight Bash script that automates the process of downloading, setting permissions, and installing a CLI-based Speedtest binary (`st`) from GitHub.

This is perfect for sysadmins, DevOps engineers, and anyone who needs to test internet speed from the Linux command line.

---

## 📌 Features

- 📦 Installs the Speedtest (`st`) binary from a trusted GitHub source
- 🔒 Applies executable permissions (`chmod +x`)
- 📂 Moves the binary to `/usr/bin/` for global command-line access
- ✅ Validates the installation automatically
- 💡 Minimal dependencies – lightweight and fast

---

## 📖 Installation Guide

### ✅ Prerequisites

Ensure your system meets these basic requirements:

- 🐧 Linux OS (Debian/Ubuntu/CentOS tested)
- `curl` (used for downloading)  
  _Install it if missing: `sudo apt install curl -y`_
- `sudo` privileges (required to move the binary to `/usr/bin/`)

---

### 🧪 Steps to Install

```bash
# 1. Clone the repository
git clone https://github.com/Lalatenduswain/st.git

# 2. Navigate into the repo
cd st

# 3. Make the installer script executable
chmod +x install_st.sh

# 4. Run the installer
./install_st.sh
```

After installation, verify with:

```bash
st
```

You should see your internet speed results in the terminal!

---

## 📜 Script Explanation

### `install-speedtest-cli.sh`

This script performs the following:

1. Downloads the `st` binary from a public GitHub source.
2. Saves it to `/tmp/st`.
3. Adds execute permission (`chmod +x`).
4. Moves it to `/usr/bin/st` using `sudo`.
5. Checks if `st` is accessible via the terminal.

> This makes the `st` command available globally so you can use it anywhere on your system.

---

## ⚠️ Disclaimer | Running the Script

**Author:** Lalatendu Swain  
🔗 [GitHub](https://github.com/Lalatenduswain) | 🌐 [Website](https://blog.lalatendu.info/)

This script is provided as-is and may require modifications based on your system configuration. Use it at your own risk. The author is not responsible for any issues or damage that may arise from its usage.

---

## 💖 Support & Donations

If you found this tool useful and want to show appreciation:

☕ [Buy Me a Coffee](https://www.buymeacoffee.com/lalatendu.swain)

---

## 🛠️ Support or Contact

Encountering issues or have a feature request?  
Open an issue here:  
👉 [https://github.com/Lalatenduswain/st/issues](https://github.com/Lalatenduswain/st/issues)

We welcome feedback and contributions from the community!

---

## 📎 Repository Details

- **GitHub Repo**: [`https://github.com/Lalatenduswain/st`](https://github.com/Lalatenduswain/st)
- **Script Filename**: `install-speedtest-cli.sh`

---

> Install in seconds. Test in milliseconds.  
> Enjoy blazing fast internet diagnostics with a single command: `st`
