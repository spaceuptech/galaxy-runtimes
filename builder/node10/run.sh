#!/bin/bash
set -e
cd /build
echo "Installing dependencies"
npm install
echo "Zipping up the files"
zip -r $FILE_NAME.zip .
curl -H "Authorization: Bearer $TOKEN" -F "name=$FILE_NAME.zip" -F "meta=$META" -F 'makeAll=true' -F 'fileType=file' -F "path=$FILE_PATH"  -F "file=@/build/$FILE_NAME.zip" $URL/v1/api/galaxy/files

rm $FILE_NAME.zip
rm -r node_modules
rm package-lock.json