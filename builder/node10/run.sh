#!/bin/bash
set -e
cd /build
echo "Installing dependencies"
npm install
echo "Zipping up the files"
zip -r build.zip .
curl -H "Authorization: Bearer $TOKEN" -F "name=build.zip" -F "meta=$META" -F 'makeAll=true' -F 'fileType=file' -F "path=$FILE_PATH"  -F "file=@/build/build.zip" $URL/v1/api/galaxy/files

rm build.zip
rm -r node_modules
rm package-lock.json