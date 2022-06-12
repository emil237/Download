#!/bin/sh

##setup command=wget https://raw.githubusercontent.com/emil237/ncam-revcam/main/installer.sh -O - | /bin/sh
#
echo " download and install emu ncam-revcam "

version=2.0
OPKGINSTALL=opkg install --force-reinstall
MY_URL="https://raw.githubusercontent.com/emil237/ncam-revcam/main"

MY_IPK_NCAM_REVCAM="enigma2-plugin-softcams-ncam-revcamV2_12.2_all.ipk"
##############################################################################
###########################################
# Remove previous files #
cd /tmp
rm -rf * > /dev/null 2>&1

# Download and install plugin #


echo "================================="
set -e
     wget "$MY_URL/$MY_IPK_NCAM_REVCAM"
  wait
   opkg install --force-reinstall $MY_IPK_NCAM_REVCAM
echo '========================================================================================================================='
set +e
rm -f $MY_IPK_NCAM_REVCAM
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






















































