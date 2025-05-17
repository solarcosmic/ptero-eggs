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
mkdir -p config
echo "{\"Kestrel\":{\"Endpoints\":{\"HTTP\":{\"Url\":\"http://*:${SERVER_PORT}\"}}}}" > config/IPC.config
echo "--------------------------------"
echo "Thanks for using @solarcosmic's ArchiSteamFarm egg! (solarcosmic.net)"
echo "IPC.config created. When ArchiSteamFarm is completely up, you should be able to access ASF-ui using the server's address (port ${SERVER_PORT})."
echo "ArchiSteamFarm is now installed and will now attempt to launch."
echo "--------------------------------"
echo

MODIFIED_STARTUP=$(eval echo "${STARTUP//\{\{/\${}")
echo ":/home/container$ ${MODIFIED_STARTUP}"

${MODIFIED_STARTUP}