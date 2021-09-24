#!/bin/sh
echo "Starting the Home Assistant removal"
/etc/init.d/homeassistant stop&&
wget https://github.com/DivanX10/OpenWRT-and-Home-Assistant/blob/main/homeassistant_python3.9_delete.sh -O /tmp/homeassistant_python3.9_delete.sh&&
sh /tmp/homeassistant_python3.9_delete.sh
