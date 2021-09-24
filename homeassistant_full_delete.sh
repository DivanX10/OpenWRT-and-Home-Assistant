#!/bin/bash
echo "Starting the Home Assistant removal"
sleep 1
/etc/init.d/homeassistant stop&&
sleep 5
pip3 uninstall homeassistant -y&&
rm -R /etc/homeassistant&&
rm -R /usr/lib/python3.9/site-packages/hass_frontend*&&
rm -R /usr/lib/python3.9/site-packages/hass_nabucasa*&&
rm -R /usr/lib/python3.9/site-packages/home_assistant_frontend*&&
rm -R /root/.homeassistant&&
rm -R /etc/init.d/homeassistant&&
echo "Home Assistant was successfully deleted"
sleep 5
echo "Deleting dependent packages"
opkg update&&
opkg remove --force-depends \
  patch \
  python3-aiohttp \
  python3-aiohttp-cors \
  python3-async-timeout \
  python3-asyncio \
  python3-attrs \
  python3-bcrypt \
  python3-boto3 \
  python3-botocore \
  python3-certifi \
  python3-cffi \
  python3-cgi \ 
  python3-cgitb \
  python3-chardet \
  python3-codecs \
  python3-cryptodome \
  python3-cryptography \
  python3-ctypes \
  python3-dateutil \
  python3-dbm \
  python3-decimal \
  python3-defusedxml \
  python3-distutils \
  python3-docutils \
  python3-email \
  python3-greenlet \
  python3-idna \
  python3-jinja2 \
  python3-jmespath \
  python3-light \
  python3-logging \
  python3-lzma \
  python3-markupsafe \
  python3-multidict \
  python3-multiprocessing \
  python3-ncurses \
  python3-netifaces \
  python3-openssl \
  python3-pip \
  python3-pkg-resources \
  python3-ply \
  python3-pycparser \
  python3-pydoc \
  python3-pyopenssl \
  python3-pytz \
  python3-requests \
  python3-s3transfer \
  python3-setuptools \
  python3-six \
  python3-sqlite3 \
  python3-unittest \
  python3-urllib \
  python3-urllib3 \
  python3-xml \
  python3-yaml \
  python3-yarl \
  python3-netdisco \
  python3-pillow \
  python3-cryptodomex \
  python3-slugify&&
sleep 2
pip uninstall -r /tmp/requirements.txt -y&&
sleep 2
echo "The dependent packages have been removed. Home Assistant has been completely removed"
sleep 2
exit
