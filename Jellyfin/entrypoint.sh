#!/bin/bash
cd /home/container

curl https://repo.jellyfin.org/install-debuntu.sh | bash

MODIFIED_STARTUP=$(eval echo "${STARTUP//\{\{/\${}")
echo ":/home/container$ ${MODIFIED_STARTUP}"

${MODIFIED_STARTUP}