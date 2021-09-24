#!/bin/bash
echo "Starting the backup of the Home Assistant, zigbee2mqtt, mosquitto, mpd"
sleep 2
mkdir backup&&
sleep 2
wget https://github.com/DivanX10/OpenWRT-and-Home-Assistant/edit/main/autobackup.sh -O /tmp/autobackup.sh&&
sleep 2
tar -cvf /backup/gateway_backup-$(date +%Y%m%d).tar /etc/homeassistant /etc/zigbee2mqtt /etc/mosquitto /mpd&&
