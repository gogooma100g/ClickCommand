export ANDROID_HOME=/Users/on1530000001/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/build-tools/28.0.3

# build setting for android
alias gn='./gradlew'
alias text='adb shell input text '   # to enter text input to your device

function ad() { adb devices; }
function sta() { adb shell am start -n "$appId"/"$mainActivityName";}  # start app
function startApp() { if [ -z != $1 ];then ANDROID_SERIAL=$1 adb shell am start -n "$appId"/"$mainActivityName"; else sta; fi; }

function clr() { adb shell pm clear "$appId";}  # clear data of app
function uns() { adb uninstall "$appId";}   # uninstall app


