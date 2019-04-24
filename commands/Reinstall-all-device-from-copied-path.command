#!/bin/sh
BASEDIR=$(dirname "$0")
source $BASEDIR/../common.sh

##########################################################################
#
# reinstall apk to the all of the connected devices
#
##########################################################################

adb devices | tail -n +2 | cut -sf 1 | xargs -IX adb -s X install -r "$(pbpaste)"
