#!/bin/sh
echo "Starting the Home Assistant removal"
sleep 1
/etc/init.d/homeassistant stop&&
sleep 5
pip3 uninstall homeassistant&&
rm -R /etc/homeassistant&&
rm -R /usr/lib/python3.9/site-packages/hass_frontend*&&
rm -R /usr/lib/python3.9/site-packages/hass_nabucasa*&&
rm -R /usr/lib/python3.9/site-packages/home_assistant_frontend*&&
rm -R /root/.homeassistant&&
rm -R /etc/init.d/homeassistant&&
echo "Home Assistant was successfully deleted"
exit