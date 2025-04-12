#!/usr/bin/env bash
set -e

# Import Bashio
. /usr/lib/bashio/bashio.sh

# Ensure /config exists and is writable
if [ ! -d "/config" ]; then
    bashio::log.error "/config directory not found. Ensure it is mounted correctly by Home Assistant."
    exit 1
fi

# Copy default configuration files if not already present
if [ ! -f "/config/config.json" ]; then
    bashio::log.info "Creating default configuration files in /config..."
    cp /etc/AIS-catcher/config.json /config/
fi

# Log the start of AIS-catcher
bashio::log.info "Starting AIS-catcher..."
AIS-catcher -G system on -o 0 -C /config/config.json || bashio::log.error "Failed to start AIS-catcher. Check configuration and dependencies."

# Start AIS-catcher-control
bashio::log.info "Starting AIS-catcher-control..."
exec /usr/bin/AIS-catcher-control
