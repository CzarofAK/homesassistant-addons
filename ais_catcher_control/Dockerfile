FROM ghcr.io/jvde-github/ais-catcher-control:edge

# Add Bashio for Home Assistant compatibility
ADD https://github.com/hassio-addons/bashio/archive/v0.15.0.tar.gz /tmp/bashio.tar.gz
RUN apt-get update && apt-get install -y curl jq && mkdir /tmp/bashio \
    && tar zxvf \
        /tmp/bashio.tar.gz \
        --strip 1 -C /tmp/bashio \
    \
    && mv /tmp/bashio/lib /usr/lib/bashio \
    && ln -s /usr/lib/bashio/bashio /usr/bin/bashio

# Expose the required ports
EXPOSE 8110
EXPOSE 8100

# Set the default command
CMD [ "/usr/bin/AIS-catcher-control" ]
