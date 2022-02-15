#!/bin/sh
#
# System Update Script
#
# Log to:
logfile=/var/log/systemupdate.log
#
#####################################################################
/bin/echo $(date +%Y-%m-%d\ %H:%M) >> $logfile
/usr/bin/apt-get update
/usr/bin/apt-get upgrade >> $logfile
/usr/bin/apt-get clean >> $logfile
/bin/echo "Rebooting after 2 minutes wait..." >> $logfile
/usr/sbin/shutdown --reboot +2 "Rebooting after system update in 2 minutes... Use shutdown -c to cancel..." >> $logfile
/bin/echo "------------------------------------------------------------------------------" >> $logfile
