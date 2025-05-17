#!/bin/bash
cd /home/container

curl https://repo.jellyfin.org/install-debuntu.sh | sudo bash

MODIFIED_STARTUP=$(eval echo "${STARTUP//\{\{/\${}")
echo ":/home/container$ ${MODIFIED_STARTUP}"

${MODIFIED_STARTUP}