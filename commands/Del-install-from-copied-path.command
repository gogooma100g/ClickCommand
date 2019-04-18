BASEDIR=$(dirname "$0")
source $BASEDIR/../common.sh

##########################################################################
#
# delete and install apk to the connected devices
#
##########################################################################

#set path $ANDROID_HOME/build-tools in .bash_profile to use aapt command
package=$(aapt dump badging "$(pbpaste)" | awk '/package/{gsub("name=|'"'"'","");  print $2}')
#echo "package : $package"

connectedDeviceCount=$(getConnectedDeviceCount)
echo "connectedDeviceCount : $connectedDeviceCount"

if [[ connectedDeviceCount -eq 2 ]]
then
    selectDevice
    exist=$(adb -s $selectedDevice shell pm path $package)
    if [ -z "$exist" ]; then
        adb -s $selectedDevice install $(pbpaste)
    else
        adb -s $selectedDevice uninstall $package
        adb -s $selectedDevice install $(pbpaste)
    fi
else
    #adb shell pm list packages | grep $package
    exist=$(adb shell pm path $package)
    echo "exist : $exist"
    if [ -z "$exist" ]; then
        adb install $(pbpaste)
    else
        adb uninstall $package
        adb install $(pbpaste)
    fi
fi
