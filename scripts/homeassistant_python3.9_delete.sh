#!/bin/sh
set -e
echo "Starting the Home Assistant removal"
/etc/init.d/homeassistant stop
pip3 uninstall homeassistant -y
rm -R /etc/homeassistant
rm -R /usr/lib/python3.9/site-packages/hass_frontend*
rm -R /usr/lib/python3.9/site-packages/hass_nabucasa*
rm -R /usr/lib/python3.9/site-packages/home_assistant_frontend*
rm -R /root/.homeassistant
rm -R /etc/init.d/homeassistant
echo "Home Assistant was successfully deleted"
exit
