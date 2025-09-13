 #!/bin/bash

# colour 
Black="\033[1;30m"       # Black
Red="\033[1;31m"         # Red
Green="\033[1;32m"       # Green
Yellow="\033[1;33m"      # Yellow
Blue="\033[1;34m"        # Blue
Purple="\033[1;35m"      # Purple
Cyan="\033[1;36m"        # Cyan
White="\033[1;37m"       # White

apt-get update
apt-get upgrade
apt-get install python
apt-get install python2
clear
echo -e "$Yellow github.com/ronakogX/Minecraft-Host-termux-2.0"
echo -e "$Red THIS IS AN EXPERIMENTAL VERSION WHICH IS STILL BEING DEVELOPED! \e[1;34m"
sleep 4.0
clear
  echo -e "$Red      

  ⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢀⣀⡿⠿⠿⠿⠿⠿⠿⢿⣀⣀⣀⣀⣀⡀⠀⠀
⠀⠀⠀⠀⠀⠀⠸⠿⣇⣀⣀⣀⣀⣀⣀⣸⠿⢿⣿⣿⣿⡇⠀⠀Host a Minecraft Server using Android - With Termux
⠀⠀⠀⠀⠀⠀⠀⠀⠻⠿⠿⠿⠿⠿⣿⣿⣀⡸⠿⢿⣿⡇⠀⠀github.com/ronakogX/Minecraft-Host-termux-2.0 1.0 OpenJDK21
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⣤⣿⣿⣿⣧⣤⡼⠿⢧⣤⡀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⣤⣿⣿⣿⣿⠛⢻⣿⡇⠀⢸⣿⡇ This version works with OpenJDK-21, so some bugs, 
⠀⠀⠀⠀⠀⠀⠀⠀⣤⣤⣿⣿⣿⣿⠛⠛⠀⢸⣿⡇⠀⢸⣿⡇ launcher crashes, or other unwanted errors may still occur.
⠀⠀⠀⠀⠀⠀⢠⣤⣿⣿⣿⣿⠛⠛⠀⠀⠀⢸⣿⡇⠀⢸⣿⡇ Due to this early stage of development, only the 4GB option is available so far.
⠀⠀⠀⠀⢰⣶⣾⣿⣿⣿⠛⠛⠀⠀⠀⠀⠀⠈⠛⢳⣶⡞⠛⠁
⠀⠀⢰⣶⣾⣿⣿⣿⡏⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠁⠀⠀
⢰⣶⡎⠉⢹⣿⡏⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⢸⣿⣷⣶⡎⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  \033[0m"


    echo " "
    echo -e "                   $Yellow Made by RonakogX$Red       ⫸$Purple Minecraft Version 1.21.8 $Red ⫷\033[0m"
echo " "
echo -e " $Green     |---------------------------------------------------------------------|"
echo -e " $Green     ||----------------------------$Cyan [List] $Green---------------------------||"
echo -e " $Green     ||                                                                   "
echo -e " $Green     ||             $Purple==>$Yellow[1] START Server - 4GB RAM$Green                    "
echo -e " $Green     ||             $Purple==>$Yellow[999] Reset/Update Launcher$Green                                           "
echo -e " $Green     ||                                                                   "                                                                                       
echo -e " $Green     ||---------------------------$Cyan [select option] $Green-----------------------||"
echo -e " $Green     |---------------------------------------------------------------------|"
echo " "
echo " "

    read ch
   if [ $ch -eq 1 ];then
        pkg install openjdk-21

pkg install wget

pkg install openssh

sshd

passwd

cd ~/

mkdir ronak_minecrafthost21 && ronak_minecrafthost21

cd ronak_minecrafthost21

wget -O server.jar https://fill-data.papermc.io/v1/objects/8de7c52c3b02403503d16fac58003f1efef7dd7a0256786843927fa92ee57f1e/paper-1.21.8-60.jar

chmod +x server.jar

 echo eula=true > eula.txt

java -Xmx4G -Xms4G -jar server.jar nogui

        exit
    
    
   elif [ $ch -eq 999 ];then
 rm -rf minecraft
git clone https://github.com/ronakogX/Minecraft-Host-termux-2.0
cd Minecraft-Host-termux-2.0
chmod +x betalauncher1.21.8.sh
./betalauncher1.21.8.sh
     
        exit
        
    else
        echo -e "\e[4;32m Invalid Input !!! \e[0m"
        pause
    fi
done

