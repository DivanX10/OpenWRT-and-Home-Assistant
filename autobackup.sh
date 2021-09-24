#!/bin/bash
backup="/backup/gateway_backup-$(date +%Y%m%d).tar"

bkpfolder="
/etc/homeassistant
/etc/zigbee2mqtt
/etc/mosquitto
/mpd"

bkpfile="/etc/mpd.conf"

echo "Starting a backup"
sleep 2
tar -cvf $backup $OF $bkpfolder $of $bkpfile&&
echo "The backup was completed successfully"

