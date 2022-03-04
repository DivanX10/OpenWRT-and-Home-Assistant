# OpenWRT 21. Установка, удаление и бэкап Home Assistant

__Cкрипты для установки Home Assistant находятся в разделе [Releases](https://github.com/DivanX10/OpenWRT-and-Home-Assistant/releases)__

__Ответы на вопросы в разделе [WiKi](https://github.com/DivanX10/Openwrt-scripts-for-gateway-zhwg11lm/wiki)__

__Владельцам шлюза Xiaomi DGNWG05LM [сюда](https://github.com/DivanX10/Openwrt-scripts-for-gateway-dgnwg05lm)__

__Владельцам шлюза Aqara ZHWG11LM [сюда](https://github.com/DivanX10/Openwrt-scripts-for-gateway-zhwg11lm)__

# Резервное копирование и удаление

__На всякий случай можете сделать полный бэкап вручную, через консоль__

Бэкап будет лежать в папке /tmp
```
tar cvz -f /tmp/backup_$(date +%d-%m-20%y_%H-%M).tar.gz -C /overlay/upper/ /overlay/upper/
```
__Удаление всех файлов и сброс шлюза к заводским настройкам__
```
rm -rf /overlay/upper/.* /overlay/upper/* || reboot
```

__Делает бэкап папок Home Assistant + zigbee2mqtt + mosquitto__
```
wget https://raw.githubusercontent.com/DivanX10/OpenWRT-and-Home-Assistant/main/scripts/autobackup.sh -O - | sh
```

# Удаление Home Assistant

__Удаление только Home Assistant без записи в лог файл. Не удаляет зависимые пакеты. Этот скрипт удаляет только сам Home Assistant и папки Home Assistant. [Зависимые пакеты не удаляются - выделенно желтым](https://github.com/openlumi/homeassistant_on_openwrt/blob/21.02/ha_install.sh#L33-L182). Данный вариант подходит, если вы хотите установить Home Assistant другой версии__ 

```
wget https://raw.githubusercontent.com/DivanX10/OpenWRT-and-Home-Assistant/main/scripts/homeassistant_python3.9_delete.sh -O - | sh
```

Тоже самое, что и выше, только с записью в лог файл. Файл `ha_delete.log` будет лежать здесь `/mnt/ha_delete.log`
```
wget https://raw.githubusercontent.com/DivanX10/OpenWRT-and-Home-Assistant/main/scripts/homeassistant_python3.9_delete.sh -O - | sh 2>&1 | tee /mnt/ha_delete.log

```

***

__Полное удаление без записи в лог файл. Удаляет Home Assistant и зависимые пакеты.__
```
wget https://raw.githubusercontent.com/DivanX10/OpenWRT-and-Home-Assistant/main/scripts/homeassistant_full_delete.sh -O - | sh
```

Полное удаление с записью в лог файл. Файл `ha_full_delete` будет лежать здесь `/mnt/ha_full_delete`
```
wget https://raw.githubusercontent.com/DivanX10/OpenWRT-and-Home-Assistant/main/scripts/homeassistant_full_delete.sh -O - | sh 2>&1 | tee /mnt/ha_full_delete.log
```

***

**Удаляем все зависимые пакеты для Home Assistant**

Это нужно, если вы удалили Home Assistant без удаления зависымых пакетов
```
wget https://raw.githubusercontent.com/DivanX10/OpenWRT-and-Home-Assistant/main/scripts/removing_packages.sh -O - | sh
```









