# ----------------------------------
# ArchiSteamFarm Egg by @solarcosmic
# Environment: Alpine
# ----------------------------------
FROM        --platform=$TARGETOS/$TARGETARCH debian:bookworm-slim

LABEL       author="solarcosmic" maintainer="abe@solarcosmic.net"

RUN         apt update && apt upgrade -y \
			&& apt install -y wget curl unzip locales \
			&& update-locale lang=en_US.UTF-8 \
			&& dpkg-reconfigure --frontend noninteractive locales \
			&& useradd -m -d /home/container -s /bin/bash container

USER        container
ENV         USER=container HOME=/home/container
ENV         DEBIAN_FRONTEND=noninteractive

WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         [ "/bin/bash", "/entrypoint.sh" ]