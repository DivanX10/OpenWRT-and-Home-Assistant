#!/bin/bash

# backup - указываем путь, где будет храниться бэкап
backup="/backup/gateway_backup-$(date +%Y%m%d).tar"

# bkpfolder - бэкап папок. Указываем какие папки нужно бэкапить
bkpfolder="/etc/homeassistant
/etc/zigbee2mqtt
/etc/mosquitto
/mpd"

# bkpfile - бэкап файлов. Указываем какие файлы нужно бэкапить
bkpfile="/etc/mpd.conf"

echo "Starting a backup"
sleep 2
tar -cvf $backup $OF $bkpfolder $of $bkpfile&&
echo "The backup was completed successfully"
