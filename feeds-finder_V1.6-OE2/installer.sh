#!/bin/bash
######################################################################################
## Command=wget https://raw.githubusercontent.com/emil237/Download/main/feeds-finder_V1.6-OE2/installer.sh -O - | /bin/sh
##
###########################################
###########################################

# my config script #

MY_IPK_PY2="feeds-finder_V1.6_py2_all.ipk"
MY_IPK_PY3="feeds-finder_V1.6_py3_all.ipk"
MY_URL="https://raw.githubusercontent.com/emil237/Download/main/feeds-finder_V1.6-OE2"
PYTHON_VERSION=$(python -c 'import sys; print(sys.version_info[0])')

######################################################################################
MY_EM='============================================================================================================'
#  Remove Old Plugin  #
echo "   >>>>   Remove old version   "

rm -r /usr/lib/enigma2/python/Plugins/Extensions/FeedsFinder

#################################
    
###################
echo "============================================================================================================================"
 echo " DOWNLOAD AND INSTALL PLUGIN "

echo "   Install Plugin please wait "

cd /tmp 

set -e
    
  wait
     
if python --version 2>&1 | grep -q '^Python 3\.'; then
  wget "$MY_URL/$MY_IPK_PY3"
opkg install --force-overwrite $MY_IPK_PY3
	else 
echo "   Install Plugin please wait "
   wget "$MY_URL/$MY_IPK_PY2"
opkg install --force-overwrite $MY_IPK_PY2
	fi
echo "================================="
set +e
cd ..
wait
rm -f /tmp/$MY_IPK_PY2
rm -f /tmp/$MY_IPK_PY3
	if [ $? -eq 0 ]; then
echo ">>>>  SUCCESSFULLY INSTALLED <<<<"
fi
		echo "********************************************************************************"
echo "   UPLOADED BY  >>>>   EMIL_NABIL " 
sleep 4;                         
echo $MY_EM
###################                                                                                                                  
echo " Your Device Will RESTART Now " 
echo "**********************************************************************************"
wait
init 4
init 3
exit 0




















