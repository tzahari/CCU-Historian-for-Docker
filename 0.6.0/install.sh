#!/bin/bash

URL=http://www.ccu-historian.de/uploads/CCU-Historian
FILENAME=ccu-historian-0.6.0-bin.zip
FOLDER=/opt/ccu-historian
FOLDERDB=/database

echo "installing unzip"
yum install -y unzip

echo "Downloading $FILENAME..."
echo "   ${URL}/${FILENAME}"

curl --progress-bar --connect-timeout 30 --junk-session-cookies --insecure --location --max-time 3600 --retry 3 --retry-delay 60 "${URL}/${FILENAME}" --output "${FILENAME}"

echo "Installing..."
mkdir $FOLDER
unzip $FILENAME -d $FOLDER
chmod +x start.sh
mv start.sh $FOLDER

mkdir $FOLDERDB
mkdir $FOLDERDB/config

echo "Cleanup..."
rm -f "${FILENAME}"
yum clean all

echo "Finished"

exit 0
