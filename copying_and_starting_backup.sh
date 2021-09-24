#!/bin/bash
mkdir /backup&&
mkdir /scripts&&
wget https://raw.githubusercontent.com/DivanX10/OpenWRT-and-Home-Assistant/main/copying_and_starting_backup.sh -O /scripts/autobackup.sh&&
chmod ugo+x /scripts/autobackup.sh&&
sh /scripts/autobackup.sh
