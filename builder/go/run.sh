#!/bin/bash
set -e

cd /build
echo "Installing dependencies"
go get -d -v
go build -o main
echo "Zipping up the files"
zip -r $FILE_NAME.zip FILE_NAME

curl -H "Authorization: Bearer $TOKEN" -F "name=$FILE_NAME.zip" -F "meta=$META" -F 'makeAll=true' -F 'fileType=file' -F "path=$FILE_PATH"  -F "file=@/build/$FILE_NAME.zip" $URL/v1/api/galaxy/files

rm main
rm build.zip