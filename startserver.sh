#!/bin/bash
DO_RAMDISK=0
RED="\e[31m"
GREEN="\e[32m"
CONTINUE="\e[1;${GREEN}"
ERROR="\e[3;${RED}"
INFORMATION="\e[94m"
ENDCOLOR="\e[0m"

mkdir -p server
cp eula.txt server

echo -e "${INFORMATION}Check requirement on your system.${ENDCOLOR}"
if command -v wget >> /dev/null; then
    echo -e "${CONTINUE}wget is installed${ENDCOLOR}"
    export GETTER='wget'
elif command -v curl >> /dev/null; then
    echo -e "${CONTINUE}curl is installed${ENDCOLOR}"
    export GETTER='curl'
else
    echo -e "${ERROR}Neither wget or curl were found on your system. Please install one and try again${ENDCOLOR}"
    exit 0
fi
if command -v java >> /dev/null; then
    echo -e "${CONTINUE}java is installed${ENDCOLOR}"
else
    echo -e "${ERROR}You NEED java on your system !!! ${ENDCOLOR}"
    exit 0
fi

if [[ $(cat server-setup-config.yaml | grep 'ramDisk:' | awk 'BEGIN {FS=":"}{print $2}') =~ "yes" ]]; then
    SAVE_DIR=$(cat server.properties | grep 'level-name' | awk 'BEGIN {FS="="}{print $2}')
    mv "$SAVE_DIR" "${SAVE_DIR}_backup"
    mkdir "$SAVE_DIR"
    sudo mount -t tmpfs -o size=2G tmpfs "$SAVE_DIR"
    DO_RAMDISK=1
fi

if [ -f serverstarter.jar ]; then
    echo -e "${INFORMATION}Skipping download. Using existing serverstarter.jar${ENDCOLOR}"
    java -jar serverstarter.jar
        if [[ $DO_RAMDISK -eq 1 ]]; then
        sudo umount "$SAVE_DIR"
        rm -rf "$SAVE_DIR"
        mv "${SAVE_DIR}_backup" "$SAVE_DIR"
        fi
        exit 0
else
    export URL="https://github.com/Ocraftyone/ServerStarter-CFCorePatch/releases/download/v2.3.1/serverstarter-2.3.1.jar"
    "${GETTER}" -O serverstarter.jar "${URL}"
fi

java -jar serverstarter.jar

if [[ $DO_RAMDISK -eq 1 ]]; then
    sudo umount "$SAVE_DIR"
    rm -rf "$SAVE_DIR"
    mv "${SAVE_DIR}_backup" "$SAVE_DIR"
fi
