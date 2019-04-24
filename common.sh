#!/bin/sh
source /Users/on1530000001/.bash_profile

currentPath=$(dirname "$BASH_SOURCE")
source $currentPath/device.sh
source $currentPath/delete.sh
source $currentPath/install.sh
source $currentPath/permission.sh
