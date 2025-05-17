# ----------------------------------
# Pterodactyl Core Dockerfile
# Environment: Plex
# Minimum Panel Version: 0.6.0
# ----------------------------------
FROM ubuntu:22.04

LABEL author="solarcosmic"
LABEL org.opencontainers.image.source="https://github.com/solarcosmic/ptero-eggs"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
    curl \
    ca-certificates \
    gnupg \
    lsb-release \
    tzdata \
    tini \
    && curl https://downloads.plex.tv/plex-keys/PlexSign.key | apt-key add - \
    && echo "deb https://downloads.plex.tv/repo/deb public main" > /etc/apt/sources.list.d/plexmediaserver.list \
    && apt update \
    && apt install -y plexmediaserver \
    && useradd -m -d /home/container -s /bin/bash container \
    && chown -R container:container /home/container

USER container
ENV USER=container HOME=/home/container
WORKDIR /home/container

COPY --chown=container:container entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/usr/bin/tini", "--"]
CMD ["/entrypoint.sh"]
