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
echo "ArchiSteamFarm is now ready to run."

MODIFIED_STARTUP=$(eval echo "${STARTUP//\{\{/\${}")
echo ":/home/container$ ${MODIFIED_STARTUP}"

${MODIFIED_STARTUP}