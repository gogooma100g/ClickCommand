#!/bin/sh
BASEDIR=$(dirname "$0")
source $BASEDIR/../common.sh
source $BASEDIR/config.sh

setStg

for permission in "${permissions[@]}"
do
    removePermission $permission
done
