#!/bin/sh
BASEDIR=$(dirname "$0")
source $BASEDIR/../common.sh
source $BASEDIR/config.sh

setPrd
install "installDebug"