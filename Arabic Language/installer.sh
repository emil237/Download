#!/bin/sh # 
 # # Command: wget https://raw.githubusercontent.com/emil237/arabiclanguage/main/installer.sh -O - | /bin/sh # # ########################################### ###########################################  
MY_URL="https://raw.githubusercontent.com/emiln237/arabiclanguage/main"  
echo "******************************************************************************************************************"
echo "download and install arabic language"
echo "============================================================================================================================="

#####################################################################################
echo " download and install arabic language    "
cd /tmp
wget  "https://raw.githubusercontent.com/emil237/arabiclanguage/main/arabiclanguage_bo-hlala_all.tar.gz"
wait
echo " install Arabic language "
tar -xzf arabiclanguage_bo-hlala_all.tar.gz  -C /
wait
sleep 2;
echo "" 
echo "" 
echo "****************************************************************************************************************************"
echo "#   INSTALLED SUCCESSFULLY #"
echo "
echo " "*********************************************************" 
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













