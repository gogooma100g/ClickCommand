#!/bin/sh
BASEDIR=$(dirname "$0")
source $BASEDIR/../common.sh

##########################################################################
#
# check out CPU_ABI
#
##########################################################################

connectedDeviceCount=$(getConnectedDeviceCount)
echo "connectedDeviceCount : $connectedDeviceCount"

if [[ connectedDeviceCount -eq 2 ]]
then
    selectDevice
    adb -s $selectedDevice shell getprop ro.product.cpu.abi
    adb -s $selectedDevice shell getprop ro.product.cpu.ab2
else
    adb shell getprop ro.product.cpu.abi
    adb shell getprop ro.product.cpu.abi2
fi

