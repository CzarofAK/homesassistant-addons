#!/bin/bash

# Enable verbose logging
set -e

echo "Starting AIS-catcher-control..."

# Start AIS-catcher-control and log output
/usr/bin/AIS-catcher-control 2>&1 | tee /dev/stdout
