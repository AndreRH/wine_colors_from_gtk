#!/bin/bash

# ----------------------------------------------------------------------
# load library of common functions and set script defaults
# ----------------------------------------------------------------------

DEBUG=false
QUIET_SUCCESS=true  # default is true
QUIET_FAILURE=false # default is false

functions="$(dirname $(readlink -f $0))/functions"
[ -e "$functions" ] || functions=/usr/bin/functions
. "$functions"

As_User "xdotool key $*"
