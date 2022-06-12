#!/bin/sh

#wget -q "--no-check-certificate" https://raw.githubusercontent.com/emil237/DreamOSatcamManager/main/installer.sh -O - | /bin/sh

version=r8.7
#############################################################
TEMPATH=/tmp
PLUGINPATH=/usr/lib/enigma2/python/Plugins/Extensions/AlternativeSoftCamManager

# remove old version
rm -rf /usr/lib/enigma2/python/Plugins/Extensions/AlternativeSoftCamManager

echo ""
# Download and install plugin
cd /tmp
set -e
echo "===> Downloading And Installing DreamOSatcamManager plugin Please Wait ......"
echo
wget "https://raw.githubusercontent.com/emil237/DreamOSatcamManager/main/DreamOSatcamManager.tar.gz"
tar -xzf DreamOSatcamManager.tar.gz -C /
set +e
rm -f DreamOSatcamManager.tar.gz

echo ""
sync
echo "################################################################"
echo "#   DreamOSatcamManager.tar.gz $version INSTALLED SUCCESSFULLY #"
echo "#         Uploded BY LINUXSAT - support on                     #"
echo "################################################################"
echo "****************************************************************"
sleep 2
echo "################################################################"
echo "#              your Device will RESTART Now                    #"
echo "################################################################"
sleep 3
exit 0





