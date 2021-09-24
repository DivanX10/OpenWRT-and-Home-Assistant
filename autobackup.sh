#!/bin/bash
echo "Starting the backup of the Home Assistant, zigbee2mqtt, mosquitto, mpd"
sleep 2
mkdir /backup&&
tar cvf /backup/gateway_backup-$(date +%Y%m%d).tar /etc/mpd.conf /etc/homeassistant /etc/mosquitto /etc/zigbee2mqtt
