# Debian image

FROM debian:jessie

# Version & Language

ENV TS_VERSION LATEST
ENV LANG C.UTF-8

# Install dependencies on debian

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get -y install bzip2 wget ca-certificates \
    && rm -rf /var/lib/apt/lists/* \
    && useradd -M -s /bin/false --uid 1000 teamspeak3 \
    && mkdir /data \
    && chown teamspeak3:teamspeak3 /data

# Copy shell scripts to data volume

COPY get-version.sh /get-version
COPY start-teamspeak3.sh /start-teamspeak3

# Expose ports

EXPOSE 9987/udp 10011 30033

# Set user

USER teamspeak3

# Set Volume and Workdir

VOLUME /data
WORKDIR /data

# Run script on debian image

CMD ["/start-teamspeak3"]