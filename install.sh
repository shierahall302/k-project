#!/bin/bash
# install script

# Set error handling options
set -euo pipefail

# Define variables for URLs and paths
TPOTCE_INSTALL_URL="https://github.com/telekom-security/tpotce/raw/master/install.sh"
KATYATPOT_DC_REPO="https://github.com/shierahall302/KatyaTpot-DC"
INSTALL_DIR="KatyaTpot-DC/iso/installer/"
TPOT_CONF_DIST="tpot.conf.dist"
TPOT_CONF="tpot.conf"

# Install git and clone the KatyaTpot-DC repository
sudo apt-get update -y && sudo apt-get install git -y
if [ $? -ne 0 ]; then
  echo "Error: Failed to install git" >&2
  exit 1
fi

git clone "$KATYATPOT_DC_REPO"
if [ $? -ne 0 ]; then
  echo "Error: Failed to clone KatyaTpot-DC repository" >&2
  exit 1
fi

# Navigate to the installer directory
cd "$INSTALL_DIR"
if [ $? -ne 0 ]; then
  echo "Error: Failed to navigate to installer directory" >&2
  exit 1
fi

# Copy the tpot.conf.dist file
cp "$TPOT_CONF_DIST" "$TPOT_CONF"
if [ $? -ne 0 ]; then
  echo "Error: Failed to copy tpot.conf.dist to tpot.conf" >&2
  exit 1
fi

# Run the installation script
sudo ./install.sh --type=auto --conf="$TPOT_CONF"
if [ $? -ne 0 ]; then
  echo "Error: Failed to run the installation script" >&2
  exit 1
fi

# Install TPOTCE
env bash -c "$(curl -sL "$TPOTCE_INSTALL_URL")"
