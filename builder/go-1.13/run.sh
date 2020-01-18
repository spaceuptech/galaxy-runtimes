#!/bin/bash
set -e

cd /build
echo "Installing dependencies"
go get -d -v
go build -a -ldflags '-s -w -extldflags "-static"' -o app .
echo "Zipping up the files"
zip -r build.zip app

curl -H "Authorization: Bearer $TOKEN" -F "name=build.zip" -F "meta=$META" -F 'makeAll=true' -F 'fileType=file' -F "path=$FILE_PATH"  -F "file=@/build/build.zip" $URL/v1/api/galaxy/files

rm app
rm build.zip