#!/bin/sh

##setup command=wget https://raw.githubusercontent.com/emil237/Download/main/EMU-CAM/revcam/oscam-revcam/installer.sh -O - | /bin/sh
#
echo " download and install emu oscam-revcam "

version=2.0
OPKGINSTALL=opkg install --force-reinstall
MY_URL="https://raw.githubusercontent.com/emil237/Download/main/EMU-CAM/revcam/oscam-revcam"

MY_IPK_OSCAM_REVCAM="enigma2-plugin-softcams-oscam-revcamV2_11.703-emu-r798_all.ipk"
##############################################################################
###########################################
# Remove previous files #
cd /tmp
rm -rf * > /dev/null 2>&1

# Download and install plugin #


echo "================================="
set -e
     wget "$MY_URL/$MY_IPK_OSCAM_REVCAM"
  wait
   opkg install --force-reinstall $MY_IPK_OSCAM_REVCAM
echo '========================================================================================================================='
set +e
rm -f $MY_IPK_OSCAM_REVCAM
chmod 755 /usr/bin/*
chmod 755 /etc/tuxbox/Config/*
cd ..
wait
	if [ $? -eq 0 ]; then
echo ">>>>  SUCCESSFULLY INSTALLED <<<<"
fi
		echo "********************************************************************************"
echo "   UPLOADED BY  >>>>   EMIL_NABIL "   
sleep 4;
	echo '========================================================================================================================='
###########################################                                                                                                                  
echo ". >>>>         RESTARING     <<<<"
echo "**********************************************************************************"
wait
killall -9 enigma2
exit 0























































