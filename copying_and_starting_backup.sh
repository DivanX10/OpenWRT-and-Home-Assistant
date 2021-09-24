#!/bin/bash
mkdir /backup&&
mkdir /scripts&&
wget https://github.com/DivanX10/OpenWRT-and-Home-Assistant/blob/main/autobackup.sh -O /scripts/autobackup.sh&&
chmod ugo+x /scripts/autobackup.sh&&
sh /scripts/autobackup.sh