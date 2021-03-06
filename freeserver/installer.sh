#!/bin/sh

#wget -q "--no-check-certificate" https://raw.githubusercontent.com/emil237/Download/main/freeserver/installer.sh -O - | /bin/sh

##########################################
version=8.0.4
#############################################################
TEMPATH=/tmp
OPKGINSTALL="opkg install --force-overwrite"
MY_IPK="freeserver_8.0.4_all.ipk"
MY_DEB="freeserver_8.0.4_all.deb"
MY_URL="https://raw.githubusercontent.com/emil237/Download/main/freeserver"
# remove old version #
rm -rf /usr/lib/enigma2/python/Plugins/Extensions/freeserver

echo ""
# Download and install plugin
cd /tmp
set -e
     wget "$MY_URL/$MY_IPK"
  wait
     wget "$MY_URL/$MY_DEB"

 if which dpkg > /dev/null 2>&1; then
		dpkg -i --force-overwrite $MY_DEB; apt-get install -f -y
	else
		$OPKGINSTALL $MY_IPK
	fi
echo "================================="
set +e
cd ..
wait
rm -f /tmp/$MY_IPK
rm -f /tmp/$MY_DEB
	if [ $? -eq 0 ]; then
echo ">>>>  SUCCESSFULLY INSTALLED <<<<"
fi
		echo "********************************************************************************"
echo "   UPLOADED BY  >>>>   EMIL_NABIL "   
sleep 4;
		echo ". >>>>         RESTARING     <<<<"
echo "**********************************************************************************"
wait
killall -9 enigma2
exit 0

