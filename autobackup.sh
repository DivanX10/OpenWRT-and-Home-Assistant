#!/bin/bash
echo "Starting the backup of the Home Assistant, zigbee2mqtt, mosquitto, mpd"
sleep 2
mkdir /backup&&
tar -cvf /backup/gateway_backup-$(date +%Y%m%d).tar /etc/homeassistant /etc/zigbee2mqtt /etc/mosquitto /etc/mpd.conf
