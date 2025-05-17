#!/bin/bash
cd /home/container

curl -L -o ASF-linux-x64.zip https://github.com/JustArchiNET/ArchiSteamFarm/releases/latest/download/ASF-linux-x64.zip
if [ ! -f ASF-linux-x64.zip ]; then
    echo "Download failed: ASF-linux-x64.zip not found."
    exit 1
fi
unzip -o ASF-linux-x64.zip
if [ ! -f ArchiSteamFarm ]; then
    echo "Error: ArchiSteamFarm binary executable was not found."
    exit 1
fi
chmod +x ArchiSteamFarm
clear
if [ "${IPC_PORT}" == "true" || "${IPC_PORT}" == "1" ]; then
    mkdir -p config
    echo "{\"Kestrel\":{\"Endpoints\":{\"HTTP\":{\"Url\":\"http://*:${SERVER_PORT}\"}}}}" > config/IPC.config
    echo "IPC.config created with port ${IPC_PORT}"
fi
echo "ArchiSteamFarm is now ready to run."

MODIFIED_STARTUP=$(eval echo "${STARTUP//\{\{/\${}")
echo ":/home/container$ ${MODIFIED_STARTUP}"

${MODIFIED_STARTUP}