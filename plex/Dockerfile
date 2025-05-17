# ----------------------------------
# Pterodactyl Core Dockerfile
# Environment: Plex
# Minimum Panel Version: 0.6.0
# ----------------------------------
FROM lscr.io/linuxserver/plex:latest

LABEL maintainer="solarcosmic <abe@solarcosmic.net>"

ENV USER=container \
    HOME=/home/container

RUN mkdir -p /home/container/tv /home/container/movies && \
    chown -R 999:999 /home/container && \
    chown -R 999:999 /run

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]