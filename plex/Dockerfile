# ----------------------------------
# Pterodactyl Core Dockerfile
# Environment: Java
# Minimum Panel Version: 0.6.0
# ----------------------------------
FROM        --platform=$TARGETOS/$TARGETARCH debian:bullseye-slim

LABEL       author="solarcosmic" maintainer="abe@solarcosmic.net"

RUN         apt-get update \
            && apt-get install -y --no-install-recommends ca-certificates tzdata curl unzip libicu72 \
            && useradd -m -d /home/container -s /bin/bash container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         [ "/bin/bash", "/entrypoint.sh" ]