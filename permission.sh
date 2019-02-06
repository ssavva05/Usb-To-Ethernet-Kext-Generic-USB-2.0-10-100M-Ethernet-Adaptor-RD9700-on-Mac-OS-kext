#!/bin/bash

if [ $(id -u) != 0 ]; then
     echo "You need to run this script as root. Type sudo -s, enter password and run this script again."
exit
fi
sudo chmod -Rf 755 /L*/E*
sudo chown -Rf 0:0 /L*/E*
sudo chmod -Rf 755 /S*/L*/E*
sudo chown -Rf 0:0 /S*/L*/E*
sudo touch -f /L*/E*
sudo touch -f /S*/L*/E*
sudo kextcache -Boot -U /
echo "Finished"