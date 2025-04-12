FROM debian:bookworm-slim

# Install dependencies
RUN apt-get update && apt-get install -y \
    git curl jq procps iproute2 \
    make gcc g++ cmake pkg-config \
    libusb-1.0-0-dev libairspy-dev libhackrf-dev \
    libzmq3-dev libsoxr-dev zlib1g-dev libpq-dev libssl-dev \
    && apt-get clean

# Copy the installation script into the container
COPY install_ais-catcher_control.sh /tmp/install_ais-catcher_control.sh
RUN chmod +x /tmp/install_ais-catcher_control.sh

# Disable systemd-related steps in the script
RUN sed -i '/systemctl/d' /tmp/install_ais-catcher_control.sh

# Run the installation script
RUN bash -x /tmp/install_ais-catcher_control.sh || (echo "Installation script failed" && exit 1)

# Expose the port for AIS-catcher-control
EXPOSE 8110

# Copy the run script
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Set the default command
CMD [ "/run.sh" ]
