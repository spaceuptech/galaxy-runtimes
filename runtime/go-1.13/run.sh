#!/bin/bash
set -e

echo "Downloading go file"
curl -H "Authorization: Bearer $TOKEN" -O -L $URL/v1/api/galaxy/files/build.zip
echo "Unzipping up the files"
unzip -o build.zip 

rm build.zip

eval $CMD