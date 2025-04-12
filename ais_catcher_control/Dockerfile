FROM debian:bookworm-slim

# Install dependencies
RUN apt-get update && apt-get install -y \
    git curl jq systemctl procps \
    make gcc g++ cmake pkg-config \
    libusb-1.0-0-dev libairspy-dev libhackrf-dev \
    libzmq3-dev libsoxr-dev zlib1g-dev libpq-dev libssl-dev

# Install AIS-catcher-control
RUN curl -fsSL https://raw.githubusercontent.com/jvde-github/AIS-catcher-control/main/install_ais_catcher_control.sh | bash

# Expose port
EXPOSE 8110

# Copy run script
COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
