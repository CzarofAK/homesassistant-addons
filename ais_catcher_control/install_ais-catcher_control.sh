#!/bin/bash
set -e

# Configuration
GITHUB_USER="jvde-github"
GITHUB_REPO="AIS-catcher-control"
RELEASE_TAG="v0.1"
BIN_NAME="AIS-catcher-control"
INSTALL_PATH="/usr/bin/${BIN_NAME}"

# Install dependencies
apk add --no-cache curl jq

# Detect architecture
ARCH=$(uname -m)
case "$ARCH" in
  "aarch64"|"arm64") BINARY_SUFFIX="arm64" ;;
  "armv6l"|"armv7l"|"armhf") BINARY_SUFFIX="armhf" ;;
  "x86_64") BINARY_SUFFIX="amd64" ;;
  "i386"|"i686") BINARY_SUFFIX="386" ;;
  *) echo "Unsupported architecture: $ARCH"; exit 1 ;;
esac

# Fetch the binary
RELEASE_JSON=$(curl -s "https://api.github.com/repos/${GITHUB_USER}/${GITHUB_REPO}/releases/tags/${RELEASE_TAG}")
DOWNLOAD_URL=$(echo "$RELEASE_JSON" | jq -r ".assets[] | select(.name | test(\"${BINARY_SUFFIX}\")) | .browser_download_url")

if [ -z "$DOWNLOAD_URL" ] || [ "$DOWNLOAD_URL" = "null" ]; then
  echo "Could not find a download URL for architecture: ${BINARY_SUFFIX}"
  exit 1
fi

# Download and install the binary
curl -L "$DOWNLOAD_URL" -o "$INSTALL_PATH"
chmod +x "$INSTALL_PATH"
