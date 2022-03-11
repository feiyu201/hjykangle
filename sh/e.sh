#!/bin/bash
files="/root/s-hell"
source $files/config
source $files/iver
VERSION=$1
PREFIX="/vhs/kangle"
ARCH="6"
if [ -f /usr/bin/systemctl ] ; then
        ARCH="7"
fi
if [ "$VERSION" = "" ]; then
VERSION="$KANGLE_NEW_VERSION"
fi
if test `arch` = "x86_64"; then
        ARCH="$ARCH-x64"
fi
#http://download.kangleweb.com/ent/e.sh
#https://console.cdnbest.com/system/install/1005/4.0.13
#http://download.cdnbest.com/ent/kangle-ent-3.4.8-6-x64.tar.gz
#https://www.cdnbest.com/download/cdnbest/kangle-cdnbest-3.5.21.16-8-x64.tar.gz
URL="$DOWNLOAD_FILE_URL/file/completed/kangle-ent-$VERSION-$ARCH.tar.gz"
wget $URL -O kangle.tar.gz
tar xzf kangle.tar.gz
cd kangle
mkdir -p $PREFIX
wget $DOWNLOAD_URL/config_file/license.txt -O $PREFIX/license.txt
./install.sh $PREFIX