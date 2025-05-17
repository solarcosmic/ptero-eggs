# ----------------------------------
# Pterodactyl Core Dockerfile
# Environment: Java
# Minimum Panel Version: 0.6.0
# ----------------------------------
FROM        --platform=$TARGETOS/$TARGETARCH alpine:latest

LABEL       author="solarcosmic" maintainer="abe@solarcosmic.net"

RUN         apk add --update --no-cache ca-certificates tzdata curl unzip \
				&& adduser -D -h /home/container container

USER container
ENV  USER=container HOME=/home/container

STOPSIGNAL SIGINT

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]