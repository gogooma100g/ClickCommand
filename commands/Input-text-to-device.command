#!/bin/sh
BASEDIR=$(dirname "$0")
source $BASEDIR/../common.sh

##########################################################################
#
# You can enter a desired text on the connected device
#
##########################################################################

text='Hello%sAndroid'

connectedDeviceCount=$(getConnectedDeviceCount)
echo "connectedDeviceCount : $connectedDeviceCount"

if [[ connectedDeviceCount -eq 2 ]]
then
    selectDevice
    ANDROID_SERIAL=$selectedDevice text $text
else
    text $text
fi

