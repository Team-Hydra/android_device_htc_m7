#!/sbin/sh

set -e

modelid=`getprop ro.boot.mid`

case $modelid in
    "PN0731000") variant="vzw" ;;
    "PN0720000") variant="spr" ;;
    *)           variant="gsm" ;;
esac

case $modelid in
    "PN0731000") telephony="cdma" ;;
    "PN0720000") telephony="cdma" ;;
    *)           telephony="gsm" ;;
esac

ln -s /init.target-$telephony.rc /init.target.rc ;

basedir="/system/blobs/$variant/"
cd $basedir
chmod 755 bin/*
find . -type f | while read file; do ln -s $basedir$file /system/$file ; done
