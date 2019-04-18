deleteApp() {
   connectedDeviceCount=$(getConnectedDeviceCount)
   echo "connectedDeviceCount : $connectedDeviceCount"

   if [[ connectedDeviceCount -eq 2 ]]
   then
       selectDevice
       echo "selectedDevice : $selectedDevice"
       ANDROID_SERIAL=$selectedDevice uns
   elif [[ connectedDeviceCount -eq 1 ]]
   then
       uns
   fi
}

deleteData() {
    connectedDeviceCount=$(getConnectedDeviceCount)
   echo "connectedDeviceCount : $connectedDeviceCount"

   if [[ connectedDeviceCount -eq 2 ]]
   then
       selectDevice
       echo "selectedDevice : $selectedDevice"
       ANDROID_SERIAL=$selectedDevice clr
   elif [[ connectedDeviceCount -eq 1 ]]
   then
       clr
   fi
}
