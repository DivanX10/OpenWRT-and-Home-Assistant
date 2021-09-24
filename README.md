# Скрипты для OpenWRT 21. Установка, удаление и бэкап Home Assistant 

Все действия выполняются через консоль.


Делает бэкап папок Home Assistant + zigbee2mqtt + mosquitto + mpd
```
wget https://raw.githubusercontent.com/DivanX10/OpenWRT-and-Home-Assistant/main/autobackup.sh -O - | sh
```

Удаление Home Assistant без удаления зависымых пакетов. Этот скрипт удаляет только сам Home Assistant и папки Home Assistant. [Зависимые пакеты не удаляются - выделенно желтым](https://github.com/openlumi/homeassistant_on_openwrt/blob/21.02/ha_install.sh#L33-L182). Данный вариант подходит, если вы хотите установить Home Assistant другой версии 

```
wget https://raw.githubusercontent.com/DivanX10/OpenWRT-and-Home-Assistant/main/homeassistant_python3.9_delete.sh - | sh
```

Установка Home Assistant версии 2021.9.3
```
wget https://raw.githubusercontent.com/DivanX10/OpenWRT-and-Home-Assistant/main/homeassistant_install_2021_9_3.sh -O - | sh
```

Установка Home Assistant версии 2021.9.5
```
wget https://raw.githubusercontent.com/DivanX10/OpenWRT-and-Home-Assistant/main/homeassistant_install_2021_9_5.sh -O - | sh
```