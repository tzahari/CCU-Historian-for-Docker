#!/bin/bash

URL=$1
FILENAME=$(basename $URL)
FOLDER=/opt/ccu-historian
FOLDERDB=/database

echo "installing unzip & curl"
apt-get update && apt-get install -y --no-install-recommends unzip curl

echo "Downloading $FILENAME..."
echo "   ${URL}"

curl --progress-bar --connect-timeout 30 --junk-session-cookies --insecure --location --max-time 3600 --retry 3 --retry-delay 60 "${URL}" --output "${FILENAME}"

echo "Installing..."
mkdir $FOLDER
unzip $FILENAME -d $FOLDER
chmod +x start.sh
mv start.sh $FOLDER

mkdir $FOLDERDB
mkdir $FOLDERDB/config

echo "Cleanup ..."
rm -fv "${FILENAME}"
apt-get -y purge curl unzip
apt -y autoremove
rm -rf /var/lib/apt/lists/*

echo "Finished"
exit 0
