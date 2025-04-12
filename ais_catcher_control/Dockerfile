ARG BUILD_FROM=ghcr.io/home-assistant/amd64-base:latest
FROM $BUILD_FROM

ENV TZ=UTC

# Add Bashio for Home Assistant add-on compatibility
ADD https://github.com/hassio-addons/bashio/archive/v0.15.0.tar.gz /tmp/bashio.tar.gz
RUN apk add --no-cache curl jq bash && \
    mkdir /tmp/bashio && \
    tar zxvf /tmp/bashio.tar.gz --strip 1 -C /tmp/bashio && \
    mv /tmp/bashio/lib /usr/lib/bashio && \
    ln -s /usr/lib/bashio/bashio /usr/bin/bashio

# Fetch and run the AIS-catcher-control installation script
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
