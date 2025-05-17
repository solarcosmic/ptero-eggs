# ----------------------------------
# ArchiSteamFarm Egg by @solarcosmic
# Environment: Alpine
# ----------------------------------
FROM        --platform=$TARGETOS/$TARGETARCH alpine:latest

LABEL       author="solarcosmic" maintainer="abe@solarcosmic.net"

RUN         apk add --update --no-cache ca-certificates tzdata curl unzip gcompat libgcc libstdc++ icu-libs \
				&& adduser -D -h /home/container container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         [ "/bin/ash", "/entrypoint.sh" ]