#!/bin/bash
#
# Script to run at first boot after installation
# Install Hass.IO
curl -sL "https://raw.githubusercontent.com/MrSjodin/deb-preseed/main/install-hass-supervised.sh" | bash -s
# Below to remove the script from crontab file and the script itself
/bin/cat /etc/crontab | /bin/grep -v firstboot > /etc/crontab.tmp
/bin/rm -f /etc/crontab
/bin/mv /etc/crontab.tmp /etc/crontab
rm -f \$0
