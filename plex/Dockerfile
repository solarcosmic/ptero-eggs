# ----------------------------------
# Pterodactyl Core Dockerfile
# Environment: Java
# Minimum Panel Version: 0.6.0
# ----------------------------------
FROM        --platform=$TARGETOS/$TARGETARCH justarchi/archisteamfarm:main

LABEL       author="solarcosmic" maintainer="abe@solarcosmic.net"

RUN         apt update \
            && useradd -m -d /home/container container

USER container
ENV  USER=container HOME=/home/container

STOPSIGNAL SIGINT

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]