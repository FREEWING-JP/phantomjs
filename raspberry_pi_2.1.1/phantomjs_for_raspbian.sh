#!/bin/bash

mkdir ~/phantomjs_tmp
cd ~/phantomjs_tmp
git clone https://github.com/FREEWING-JP/phantomjs.git -b feature/build_raspberry_pi_2.1.1 --single-branch --depth=1
cd ./phantomjs/raspberry_pi_2.1.1/

VERSION_ID=`cat /etc/os-release | grep "VERSION_ID" | cut -d '"' -f 2`
echo $VERSION_ID

TAR_FILE=""
if [ "${VERSION_ID}" == '8' ]; then
  TAR_FILE=phantomjs_2.1.1_raspberry_pi_jessie.tar.gz
elif [ "${VERSION_ID}" == '9' ]; then
  TAR_FILE=phantomjs_2.1.1_raspberry_pi_stretch.tar.gz
else
  echo "not supported os version ."
fi
if [ -n "${TAR_FILE}" ]; then
  echo $TAR_FILE
  tar xvf $TAR_FILE
fi
ls -l phantomjs
./phantomjs -v
