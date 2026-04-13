#!/bin/bash

echo "[+] Downloading st binary from your GitHub..."

# Download the binary to current directory
curl -L -o st https://github.com/Lalatenduswain/st/raw/refs/heads/master/st

# Check if download was successful
if [[ ! -f "st" ]]; then
  echo "[✗] Download failed. Exiting."
  exit 1
fi

# Make it executable
chmod +x st

# Move to /usr/bin (use sudo only if not root)
echo "[+] Moving st to /usr/bin/ (may require sudo)"
if [[ $EUID -eq 0 ]]; then
  mv st /usr/bin/st
  chmod +x /usr/bin/st
elif command -v sudo &>/dev/null; then
  sudo mv st /usr/bin/st
  sudo chmod +x /usr/bin/st
else
  echo "[✗] Not root and sudo not available. Please run as root or install sudo."
  exit 1
fi

# Add alias to shell configuration
ALIAS_CMD="alias st='/usr/bin/st'"

# Detect shell and set appropriate RC file
if [[ "$SHELL" == */zsh ]]; then
  SHELL_RC="$HOME/.zshrc"
elif [[ "$SHELL" == */bash ]]; then
  SHELL_RC="$HOME/.bashrc"
else
  SHELL_RC="$HOME/.profile"  # fallback
fi

# Add alias if not already present
if ! grep -Fxq "$ALIAS_CMD" "$SHELL_RC"; then
  echo "[+] Adding alias to $SHELL_RC"
  echo "$ALIAS_CMD" >> "$SHELL_RC"
  echo "[✓] Alias added. Please run 'source $SHELL_RC' or restart your terminal to activate."
else
  echo "[i] Alias already present in $SHELL_RC"
fi

echo "[✓] Installation complete. You can now use 'st' to run speedtest."
