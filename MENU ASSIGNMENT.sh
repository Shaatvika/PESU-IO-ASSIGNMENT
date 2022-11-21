#!/bin/bash
clear

menu(){
	echo "----------------------------"
	echo 
	printf "\033[91mMENU\033[1m"
	echo #\033[91m10. Fortune by cows :)[0m
	echo "----------------------------"
	echo
	printf "\033[31m1. Launch htop to see processor acitvities\033[0m"
	printf "\033[33m2. Users currently logged in\033[0m"
	printf "\033[93m3. Show CPU info\033[0m"
	printf "\033[91m4. Show filesystem\033[0m"
	printf "\033[32m5. Show graphics processor\033[0m"
	printf "\033[92m6. Open Network manager\033[0m"
	printf "\033[94m7. Show pci devices in tree format[0m"
	printf "\033[34m8. Show space available on hard disk[0m"
	printf "\033[35m9. Flex arch btw :)[0m"
	printf "\033[36m10. Fortune by cows :)[0m"
	printf "\033[95m11. Fortune by dragons (they will be fire)[0m"
	printf "\033[96m12. To get a hacker-like wallpaper ;)[0m"
	printf "\033[97m13. Wanna see a graphic cow?![0m" 
	printf "\033[37m14. For some Colorful greeting!![0m"
	printf "\033[90m15. Channel your inner Joey!![0m"
	printf "\033[31m16. A dad joke from a Turkey[0m"
	printf "\033[33m17. Wanna see some rainbow words?[0m"
	printf "\033[32m18. Exit[0m "
	echo 

	echo "----------------------------"
	echo
	echo "Please enter option [1 - 18]:"  
}

option=y

while [ "$option" != "17" ]
do
	menu

	read option

	case $option in
		1) htop;; # the user has to press [q] to exit and get back to main menu 
		2) who;;
		3) cat /proc/cpuinfo | grep -Em 4 "model name|cpu MHz|cpu cores|vendor_id";;
		4) lsblk;;
		5) lspci -v | grep -i vga;;
		6) nmtui;;
		7) lspci -vt;;
		8) df -i;;
		9) neofetch | lolcat;;
		10) fortune|cowsay;;
		11) fortune|cowsay -f dragons;;
		12) cmatrix;;
		13) xcowsay How pretty am I?!!;;
		14) toilet -f mono12 -F gay "Hello there! Have a nice day!!";;
		15) cowsay -f eyes How you doin;;
		16) cowsay -f turkey Why did the police arrest the Turkey? They suspecteed it of 'Fowl play'!;;
		17) Such a cool font | lolcat -as 25;;
		18) break;;
		*) echo "Wrong option";; # * means anything else
esac

read -p "Press [enter] key to continue..." 
clear

done

clear

