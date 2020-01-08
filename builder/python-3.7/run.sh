#!/bin/bash
set -e

cd /build
echo "Installing dependencies"
pip3 install -r requirements.txt -t ./vendor 
echo "Zipping up the files"
zip -r build.zip .

curl -H "Authorization: Bearer $TOKEN" -F "name=build.zip" -F "meta=$META" -F 'makeAll=true' -F 'fileType=file' -F "path=$FILE_PATH"  -F "file=@/build/build.zip" $URL/v1/api/galaxy/files

rm -rf ./vendor
rm build.zip