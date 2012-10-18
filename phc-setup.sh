#!/bin/bash
#
# AUR phc-intel
#
# Run "/etc/rc.d/phc-intel setup" to build the module for current kernel.
# You can enter the desired voltage IDs in /etc/conf.d/phc-intel.
# Booting with nophc kernel parameter skips setting of VIDs in case of failure.

/etc/rc.d/phc-intel setup

