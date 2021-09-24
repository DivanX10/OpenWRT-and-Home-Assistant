#!/bin/bash
echo "Starting the backup of the Home Assistant, zigbee2mqtt, mosquitto, mpd"
mkdir /backup&&
wget https://github.com/DivanX10/OpenWRT-and-Home-Assistant/edit/main/autobackup.sh -O /tmp/autobackup.sh&&
sh /tmp/autobackup.sh
