BASEDIR=$(dirname "$0")
source $BASEDIR/../common.sh

##########################################################################
#
# delete and install apk to the all of the connected devices
#
##########################################################################

#set path $ANDROID_HOME/build-tools in .bash_profile to use aapt command
package=$(aapt dump badging "$(pbpaste)" | awk '/package/{gsub("name=|'"'"'","");  print $2}')
#echo "package : $package"

#adb shell pm list packages | grep $package
exist=$(adb shell pm path $package)
echo "exist : $exist"
if [ -z "$exist" ]; then
    adb devices | tail -n +2 | cut -sf 1 | xargs -IX adb -s X install $(pbpaste)
else
    adb devices | tail -n +2 | cut -sf 1 | xargs -IX adb -s X uninstall $package
    adb devices | tail -n +2 | cut -sf 1 | xargs -IX adb -s X install $(pbpaste)
fi

