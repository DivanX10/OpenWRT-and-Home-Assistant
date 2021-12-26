set -e
echo "The package removal procedure has been started"
wget https://raw.githubusercontent.com/DivanX10/OpenWRT-and-Home-Assistant/main/files/requirements_all.txt -O /tmp/requirements_all.txt
python -m pip uninstall -r /tmp/requirements_all.txt -y
echo "Packages for Home Assistant have been removed completely"
exit
