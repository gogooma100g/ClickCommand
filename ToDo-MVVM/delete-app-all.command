BASEDIR=$(dirname "$0")
source $BASEDIR/../common.sh
source $BASEDIR/config.sh

connectedDeviceCount=$(getConnectedDeviceCount)
echo "connectedDeviceCount : $connectedDeviceCount"

if [[ connectedDeviceCount -eq 2 ]]
then
    selectDevice
    echo "selectedDevice : $selectedDevice"
    setPrd
    ANDROID_SERIAL=$selectedDevice uns
    setStg
    ANDROID_SERIAL=$selectedDevice uns
    setDev
    ANDROID_SERIAL=$selectedDevice uns
elif [[ connectedDeviceCount -eq 1 ]]
then
    setPrd
    uns
    setStg
    uns
    setDev
    uns
fi
