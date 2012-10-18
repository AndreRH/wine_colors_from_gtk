#!/bin/bash

        LOG='/var/log/phc-intel.log'
        fail () {
                stat_fail
                printhl "Look at $LOG to find out what went wrong"
                exit 1
        }
        stat_busy 'Removing old phc-intel modules'
        for i in /lib/modules/*; do
                if [ -f "$i/phc-intel.ko" -a ! -f "$i/version" ]; then
                        rm -f "$i/phc-intel.ko"
                        rmdir --ignore-fail-on-non-empty "$i"
                elif [ -f "$i/extra/phc-intel.ko" -a ! -d "$i/kernel" ]; then
                        rm -f "$i/extra/phc-intel.ko"
                        rmdir -p --ignore-fail-on-non-empty "$i/extra"
                fi
        done
        stat_done
        stat_busy 'Compiling new phc-intel module'
        cd /usr/src/phc-intel/
        make &>$LOG && stat_done || fail
        stat_busy 'Installing new phc-intel module'
        make install &>>$LOG && stat_done || fail
        stat_busy 'Cleaning up'
        make clean &>>$LOG && stat_done || fail

