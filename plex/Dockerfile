# ----------------------------------
# Pterodactyl Dockerfile
# Environment: Plex
# Minimum Panel Version: 0.6.0
# ----------------------------------
FROM lscr.io/linuxserver/plex:latest

LABEL maintainer="solarcosmic <abe@solarcosmic.net>"

RUN mkdir -p /home/container/tv /home/container/movies

ENV USER=container \
    HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]