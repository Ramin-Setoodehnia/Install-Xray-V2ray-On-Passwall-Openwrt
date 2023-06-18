#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
GRAY='\033[0;37m'
NC='\033[0m' # No Color
 Check if user is root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root"
   sleep .5 
   sudo "$0" "$@"
   exit 1
fi


echo "Running as root..."
sleep 2
clear


cd /root/


if [[ -f $owo ]] 

then 

  echo "The file $owo exists. removing ..." && rm owo.sh

else 

  echo "Stage 1 Passed" 

fi

wget https://raw.githubusercontent.com/amirhosseinchoghaei/mi4agigabit/main/owo.sh

chmod 777 owo.sh



if [[ -f $up ]] 

then 

  echo "The file $up exists. removing ..." && rm up.sh

else 

  echo "Stage 2 Passed" 

fi



wget https://raw.githubusercontent.com/amirhosseinchoghaei/mi4agigabit/main/up.sh

chmod 777 up.sh

cd /etc/init.d/


if [[ -f $amir ]] 

then 

  echo "The file $amir exists. removing ..." && rm amir

else 

  echo "Stage 3 Passed" 

fi


wget https://raw.githubusercontent.com/amirhosseinchoghaei/mi4agigabit/main/amir

chmod +x /etc/init.d/amir

/etc/init.d/amir enable

cd /root/

echo -e "${GREEN} Finished ... ${ENDCOLOR}"

/etc/init.d/amir start

echo -e "${GREEN} Made With Love By : AmirHossein Choghaei ${ENDCOLOR}"

sleep 5
