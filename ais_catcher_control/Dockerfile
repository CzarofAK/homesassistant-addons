ARG BUILD_FROM
FROM $BUILD_FROM

# Install dependencies
RUN apk add --no-cache \
    curl jq bash iproute2 \
    make gcc g++ cmake pkgconfig \
    libusb-dev libairspy-dev libhackrf-dev \
    zeromq-dev soxr-dev zlib-dev postgresql-dev openssl-dev

# Copy the installation script
COPY install_ais-catcher_control.sh /tmp/install_ais-catcher_control.sh
RUN chmod +x /tmp/install_ais-catcher_control.sh

# Run the installation script
RUN bash /tmp/install_ais-catcher_control.sh

# Copy the run script
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Expose the port
EXPOSE 8110

# Set the default command
CMD [ "/run.sh" ]
