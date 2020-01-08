#!/bin/bash
set -e

echo "Downloading python file"
curl -O -L http://172.17.0.2:4122//v1/api/test/files/build.zip
echo "Unzipping up the files"
unzip -o build.zip 

rm build.zip
export PYTHONPATH=$PYTHONPATH:/runtime/vendor
eval $CMD
