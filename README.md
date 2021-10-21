# Скрипты для OpenWRT 21. Установка, удаление и бэкап Home Assistant 

Все действия выполняются через консоль.

__На всякий случай можете сделать полный бэкап вручную, через консоль__

Бэкап будет лежать в папке /tmp
```
tar cvz -f /tmp/backup_$(date +%d-%m-20%y_%H-%M).tar.gz -C /overlay/upper/ /overlay/upper/
```
__Удаление всех файлов и сброс шлюза к заводским настройкам__
```
rm -rf /overlay/upper/.* /overlay/upper/* && reboot
```

__Делает бэкап папок Home Assistant + zigbee2mqtt + mosquitto__
```
wget https://raw.githubusercontent.com/DivanX10/OpenWRT-and-Home-Assistant/main/autobackup.sh -O - | sh
```

__Удаление только Home Assistant. Не удаляет зависимые пакеты. Этот скрипт удаляет только сам Home Assistant и папки Home Assistant. [Зависимые пакеты не удаляются - выделенно желтым](https://github.com/openlumi/homeassistant_on_openwrt/blob/21.02/ha_install.sh#L33-L182). Данный вариант подходит, если вы хотите установить Home Assistant другой версии__ 

```
wget https://raw.githubusercontent.com/DivanX10/OpenWRT-and-Home-Assistant/main/homeassistant_python3.9_delete.sh -O - | sh
```

__Полное удаление. Удаляет Home Assistant и зависимые пакеты.__
```
wget https://raw.githubusercontent.com/DivanX10/OpenWRT-and-Home-Assistant/main/homeassistant_full_delete.sh -O - | sh
```

__Установка Home Assistant версии 2021.9.3__
```
wget https://raw.githubusercontent.com/DivanX10/OpenWRT-and-Home-Assistant/main/homeassistant_install_2021_9_3.sh -O - | sh
```

__Установка Home Assistant версии 2021.9.5__
```
wget https://raw.githubusercontent.com/DivanX10/OpenWRT-and-Home-Assistant/main/homeassistant_install_2021_9_5.sh -O - | sh
```

__Установка Home Assistant версии 2021.10.6__
```
wget https://raw.githubusercontent.com/DivanX10/OpenWRT-and-Home-Assistant/main/homeassistant_install_2021_10_6.sh -O - | sh
```

