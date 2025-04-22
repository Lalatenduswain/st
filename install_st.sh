#!/bin/bash

# Define the URL and target locations
ST_URL="https://github.com/Lalatenduswain/st/raw/refs/heads/master/st"
ST_TMP="/tmp/st"
ST_TARGET="/usr/bin/st"

# Download the binary
echo "[+] Downloading st binary..."
curl -L -o "$ST_TMP" "$ST_URL"

# Check if the download was successful
if [ ! -f "$ST_TMP" ]; then
    echo "[-] Download failed. Exiting."
    exit 1
fi

# Make it executable
chmod +x "$ST_TMP"

# Move it to /usr/bin (requires sudo)
echo "[+] Moving st to /usr/bin/ (may require sudo)"
sudo mv "$ST_TMP" "$ST_TARGET"

# Verify installation
if command -v st &> /dev/null; then
    echo "[✓] Installation successful. You can now use 'st' to check speedtest."
else
    echo "[-] Installation failed."
    exit 1
fi
