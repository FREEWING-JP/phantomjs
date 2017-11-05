# PhantomJS 2.1.1 binary for Raspberry Pi

★ FREEWINGの Raspberry Pi 3、シングルボードコンピュータ ラズパイ３  
http://www.neko.ne.jp/~freewing/raspberry_pi/  

## phantomjs_2.1.1_raspberry_pi_jessie.tar.gz

PhantomJS 2.1.1 binary for Raspberry Pi Raspbian Jessie

Raspbian Jessieで PhantomJS 2.1.1をビルドする方法、OpenSSL 1.0.1t  
http://www.neko.ne.jp/~freewing/raspberry_pi/raspberry_pi_3_phantomjs_211_jessie/  

## phantomjs_2.1.1_raspberry_pi_stretch.tar.gz

PhantomJS 2.1.1 binary for Raspberry Pi Raspbian Stretch

Raspbian Stretchで PhantomJS 2.1.1をビルドする方法、OpenSSL 1.1の罠  
http://www.neko.ne.jp/~freewing/raspberry_pi/raspberry_pi_3_phantomjs_211_stretch/  

## bash script direct execute

```
mkdir ~/phantomjs_tmp
cd ~/phantomjs_tmp

VERSION_ID=`cat /etc/os-release | grep "VERSION_ID" | cut -d '"' -f 2`
echo ${VERSION_ID}

BASE_URL=https://raw.githubusercontent.com/FREEWING-JP/phantomjs/feature/build_raspberry_pi_2.1.1/raspberry_pi_2.1.1/

TAR_FILE=""
if [ "${VERSION_ID}" == '8' ]; then
  TAR_FILE=phantomjs_2.1.1_raspberry_pi_jessie.tar.gz
elif [ "${VERSION_ID}" == '9' ]; then
  TAR_FILE=phantomjs_2.1.1_raspberry_pi_stretch.tar.gz
else
  echo "not supported os version ."
fi

if [ -n "${TAR_FILE}" ]; then
  echo ${TAR_FILE}
  wget ${BASE_URL}${TAR_FILE}
  tar xvf ${TAR_FILE}
fi

ls -l phantomjs
./phantomjs -v
```

## bash script by script file

```
cd
wget https://raw.githubusercontent.com/FREEWING-JP/phantomjs/feature/build_raspberry_pi_2.1.1/raspberry_pi_2.1.1/phantomjs_for_raspbian.sh
chmod +x phantomjs_for_raspbian.sh
. phantomjs_for_raspbian.sh
```

