#!/bin/bash

echo "~~~~~Update~~~~~"
sudo apt-get update
echo "Done!"

echo "~~~~~Upgrade~~~~~"
sudo apt-get upgrade
echo "Done!"

echo "~~~~~Setting Wi-Fi~~~~~"
sudo sed -i '$a network={\nssid="HCL-404"\nproto=RSN\nkey_mgmt=WPA-PSK\npairwise=CCMP\n#auth_alg=OPEN\npsk="rup453184xu/6"\n}' /etc/wpa_supplicant/wpa_supplicant.conf
echo "Done!"

echo "~~~~~Change Mode~~~~~"
chmod +x ~/wifi/scan_result.sh
echo "Done!"
