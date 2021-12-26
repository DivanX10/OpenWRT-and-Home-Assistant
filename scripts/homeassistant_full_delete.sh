#!/bin/bash
set -e
echo "Starting the Home Assistant removal"
/etc/init.d/homeassistant stop
/etc/init.d/homeassistant disable
wget https://raw.githubusercontent.com/DivanX10/OpenWRT-and-Home-Assistant/main/files/requirements_all.txt -O /tmp/requirements_all.txt
pip3 uninstall homeassistant -y
rm -R /etc/homeassistant
rm -R /usr/lib/python3.9/site-packages/hass_frontend*
rm -R /usr/lib/python3.9/site-packages/hass_nabucasa*
rm -R /usr/lib/python3.9/site-packages/home_assistant_frontend*
rm -R /root/.homeassistant
rm -R /etc/init.d/homeassistant
echo "Home Assistant was successfully deleted"
sleep 2
python -m pip uninstall -r /tmp/requirements_all.txt -y
echo "The dependent packages have been removed. Home Assistant has been completely removed"
sleep 2
exit
