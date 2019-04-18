install() {
    comm=$1

    connectedDeviceCount=$(getConnectedDeviceCount)
    echo "connectedDeviceCount : $connectedDeviceCount"

    if [[ connectedDeviceCount -eq 2 ]]
    then
        selectDevice
        gn clean
        echo "selectedDevice : $selectedDevice"
        ANDROID_SERIAL=$selectedDevice gn $comm
        startApp $selectedDevice
    elif [[ connectedDeviceCount -eq 1 ]]
    then
        gn clean
        gn $comm
        startApp
    fi
}