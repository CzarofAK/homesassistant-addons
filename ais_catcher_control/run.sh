#!/usr/bin/env bash
set -e

# Import Bashio
. /usr/lib/bashio/bashio.sh

# Read configuration options
GPSD_IP=$(bashio::config 'gpsd_ip')
GPSD_PORT=$(bashio::config 'gpsd_port')
SHARE_LOC=$(bashio::config 'share_loc')

# Build the AIS-catcher-control command
CMD="/usr/bin/AIS-catcher-control -t gpsd ${GPSD_IP} ${GPSD_PORT} -N 8110"

# Add SHARE_LOC if enabled
if [ "$SHARE_LOC" = true ]; then
  CMD="$CMD SHARE_LOC"
fi

# Log the command and start the service
bashio::log.info "Starting AIS-catcher-control with command: $CMD"
exec $CMD
