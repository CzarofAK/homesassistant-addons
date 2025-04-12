ARG BUILD_FROM
FROM $BUILD_FROM

# Install dependencies
RUN apk add --no-cache \
    curl jq bash iproute2 \
    make gcc g++ cmake pkgconf \
    libusb-dev libairspy-dev libhackrf-dev \
    zeromq-dev soxr-dev zlib-dev \
    postgresql-dev openssl-dev

# Fetch and run the installation script
RUN curl -fsSL https://raw.githubusercontent.com/jvde-github/AIS-catcher-control/main/install_ais_catcher_control.sh -o /tmp/install_ais_catcher_control.sh && \
    chmod +x /tmp/install_ais_catcher_control.sh && \
    bash /tmp/install_ais_catcher_control.sh

# Copy the run script
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Expose the port
EXPOSE 8110

# Set the default command
CMD [ "/run.sh" ]
