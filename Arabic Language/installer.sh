#!/bin/sh # 
 # # Command: wget https://raw.githubusercontent.com/emil237/Download/main/Arabic%20Language/installer.sh -O - | /bin/sh # # ########################################### ###########################################  
MY_URL="https://raw.githubusercontent.com/emil237/Download/main/Arabic%20Language"  
echo "******************************************************************************************************************"
echo "download and install arabic language"
echo "============================================================================================================================="

#####################################################################################
echo " download and install arabic language    "
cd /tmp
wget  "https://raw.githubusercontent.com/emil237/Download/main/Arabic%20Language/arabiclanguage_bo-hlala_all.tar.gz"
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











