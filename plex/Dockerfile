# ----------------------------------
# Pterodactyl Core Dockerfile
# Environment: Java
# Minimum Panel Version: 0.6.0
# ----------------------------------
FROM        --platform=$TARGETOS/$TARGETARCH alpine:latest

LABEL       author="solarcosmic" maintainer="abe@solarcosmic.net"

RUN         apk add --update --no-cache ca-certificates tzdata curl unzip gcompat libgcc libstdc++ \
				&& adduser -D -h /home/container container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         [ "/bin/ash", "/entrypoint.sh" ]