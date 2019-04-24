setPermission() {

    permission=$1

    connectedDeviceCount=$(getConnectedDeviceCount)
    #echo "connectedDeviceCount : $connectedDeviceCount"

    if [[ connectedDeviceCount -eq 2 ]]
    then
        selectDevice
        adb -s $selectedDevice shell pm grant $appId "$permission"
    elif [[ connectedDeviceCount -eq 1 ]]
    then
        adb shell pm grant $appId "$permission"
    fi
}

removePermission() {
    permission=$1

    connectedDeviceCount=$(getConnectedDeviceCount)
    #echo "connectedDeviceCount : $connectedDeviceCount"

    if [[ connectedDeviceCount -eq 2 ]]
    then
        selectDevice
        adb -s $selectedDevice shell pm revoke $appId "$permission"
    elif [[ connectedDeviceCount -eq 1 ]]
    then
        adb shell pm revoke $appId "$permission"
    fi
}