#!/bin/bash
mkdir /backup&&
mkdir /scripts&&
wget https://raw.githubusercontent.com/DivanX10/OpenWRT-and-Home-Assistant/main/autobackup.sh /scripts/autobackup.sh&&
chmod ugo+x /scripts/autobackup.sh&&
sh /scripts/autobackup.sh
