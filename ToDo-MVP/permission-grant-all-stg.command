#!/bin/sh
BASEDIR=$(dirname "$0")
source $BASEDIR/../common.sh
source $BASEDIR/config.sh

setStg

adb shell pm grant $sAppId android.permission.WRITE_EXTERNAL_STORAGE
adb shell pm grant $sAppId android.permission.ACCESS_FINE_LOCATION
adb shell pm grant $sAppId android.permission.CALL_PHONE
adb shell pm grant $sAppId android.permission.CAMERA

#adb shell pm [grant|revoke] [package] [permission]
