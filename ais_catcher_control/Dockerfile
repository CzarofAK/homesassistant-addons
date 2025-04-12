FROM debian:bookworm-slim

# Install dependencies
RUN apt-get update && apt-get install -y \
    git curl jq systemctl procps \
    make gcc g++ cmake pkg-config \
    libusb-1.0-0-dev libairspy-dev libhackrf-dev \
    libzmq3-dev libsoxr-dev zlib1g-dev libpq-dev libssl-dev \
    && apt-get clean

# Debugging: Check if the URL is accessible
RUN curl -fsSL https://raw.githubusercontent.com/jvde-github/AIS-catcher-control/main/install_ais_catcher_control.sh -o /tmp/install_ais_catcher_control.sh \
    && cat /tmp/install_ais_catcher_control.sh

# Run the installation script
RUN bash /tmp/install_ais_catcher_control.sh || (echo "Installation script failed" && exit 1)

# Expose the port for AIS-catcher-control
EXPOSE 8110

# Copy the run script
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Set the default command
CMD [ "/run.sh" ]
