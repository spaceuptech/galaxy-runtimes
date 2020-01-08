#!/bin/bash
set -e

echo "Downloading python file"
curl -H "Authorization: Bearer $TOKEN" -O -L $URL/v1/api/test/files/build.zip
echo "Unzipping up the files"
unzip -o build.zip 

rm build.zip
export PYTHONPATH=$PYTHONPATH:/runtime/vendor
eval $CMD
