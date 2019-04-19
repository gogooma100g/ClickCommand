#!/bin/sh
BASEDIR=$(dirname "$0")
source $BASEDIR/../common.sh

##########################################################################
#
# to enter text input to your device
#
##########################################################################

text='Hello%sAndroid'

connectedDeviceCount=$(getConnectedDeviceCount)
echo "connectedDeviceCount : $connectedDeviceCount"

if [[ connectedDeviceCount -eq 2 ]]
then
    selectDevice
    ANDROID_SERIAL=$selectedDevice text $text
    adb -s $selectedDevice install $(pbpaste)
else
    text $text
fi

