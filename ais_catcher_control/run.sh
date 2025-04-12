#!/usr/bin/env bash
set -e

# Import Bashio
. /usr/lib/bashio/bashio.sh

# Log the start of the service
bashio::log.info "Starting AIS-catcher-control..."

# Start AIS-catcher-control
exec /usr/bin/AIS-catcher-control
