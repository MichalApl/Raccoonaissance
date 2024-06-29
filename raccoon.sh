#!/bin/bash

domain=$1
BLUE="\033[1;34m"
GREEN="\033[1;32m"
RESET="\033[0m"

echo -e "${GREEN}╭─────────────────────────────────────────────────────────────────╮ 
│⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡠⠤⠤⠒⠒⠚⠋⠛⠳⠶⣿⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ │
│⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠔⠊⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠙⢓⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ │
│⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠴⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⡶⠔⠋⠛⠓⠲⠤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀ │
│⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣾⣿⠃⠀⠀⠀⠀⠀⢀⣠⣤⣈⠉⠒⢄⣀⠀⠀⠀⣰ │
│⠀⠀⠀⠀⠀⠀⠀⠀⠀⣨⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠐⡾⠃⠀⠀⠀⠀⠀⠀⢸⣿⢤⠙⠆⠀⠀⠀⠀⠀⢘⠏ │
│⠀⠀⠀⠀⠀⠀⠀⠀⢈⣟⣀⣀⢀⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠚⠀⠀⠀⠀⠀⠀⠀⠀⣈⣿⡄⠀⠀⠀⢀⡀⢀⣄⡈⡀ │
│⠀⠀⠀⠀⠀⠀⠀⢀⡽⠁⠀⠀⠈⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡞⠀⠻⠶⠾⢛⣉⣅⣜⣮⡏⣧ │
│⠀⠀⠀⠀⠀⠀⠀⣹⠶⢶⣦⡀⠰⣿⣦⣠⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡤⠀⠀⠀⠀⠀⠀⠐⣿⡀⠀⢰⣶⣿⣛⣻⡿⢻⣿⣛⡇ │
│⠀⠀⠀⠀⠀⢀⣼⠣⣄⡈⠙⢮⡴⠁⠙⢛⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣹⡏⠀⠀⠀⠀⠀⠀⠀⠀⡟⣷⣄⣚⠛⠻⣿⠟⠁⠀⣻⣼⠀ │
│⠀⣀⠤⢴⣚⢯⠈⠓⢾⠻⣄⡞⠀⠀⠀⠀⣸⣀⠀⠀⠀⠀⠀⠀⠀⠀⢘⣿⠀⠀⠀⠀⠀⠀⠀⠀⢀⣷⣧⣿⣿⡴⠋⠉⠙⠒⠚⠛⠋⠀ │
│⡜⠁⠀⠀⢹⢸⠇⠀⣠⡷⠛⠀⠀⠀⠀⠀⠈⣹⣆⠀⠀⠀⠀⠀⠀⢠⣎⣽⡄⠀⢀⣀⣠⠂⠀⣴⣏⠇⠋⠉⡅⠁⠀⠀⠀⠀⠀⠀⠀⠀ │
│⡇⠀⠀⠀⣼⡼⠶⠞⠁⠀⠀⠀⠀⠀⠀⠀⡜⠁⢿⠀⠀⠀⠀⢀⣠⡜⠀⠀⢏⠙⠁⠈⡩⠋⠋⠁⠈⠳⡄⠀⠸⡀⠀⠀⠀⠀⠀⠀⠀⠀ │
│⠑⠋⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠱⡄⣸⣧⣆⣷⣴⡾⠟⠀⠀⠀⠸⠀⠀⢰⠁⠀⠀⠀⠀⠀⠸⣄⠀⠘⢦⡀⠀⠀⠀⠀⠀⠀ │
│⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢦⡏⠛⠛⠙⢅⡀⠀⠀⠀⠀⢧⠀⣇⠀⠀⠀⠀⠀⠀⠀⠈⠙⣆⠀⢿⣦⡀⠀⠀⠀⠀ │
│⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠲⣄⡀⠀⠉⣉⡳⣶⡄⠘⣆⠈⠦⣄⡀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉⠀⠀⠀⠀⠀ │
│⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠑⠒⠚⠛⠉⠀⠀⠈⢳⡰⢬⣯⣳⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ │
╭─────────────────────────────────────────────────────────────────╮
│              🦝 Raccoonaissance is running 🦝                   │
╰─────────────────────────────────────────────────────────────────╯

${RESET}"

echo -e "🐾   🐾   🐾   🐾   🐾   🐾  🐾   🐾   🐾   🐾   🐾   🐾   🐾   🐾\n"

if [ "$1" == "" ]; then
	echo -e "${GREEN} 🦝 Incorrect syntax! 🦝${RESET}"
	echo -e "${BLUE} Please provide a valid domain name.${RESET}"
	echo -e "${GREEN}
╭────────────────────────────────────────────────────────╮
│       🦝 Example: ./raccoon.sh google.com 🦝           │
╰────────────────────────────────────────────────────────╯
${RESET}"
	exit 1

else
	subdomain_path=$domain/subdomains
	screenshot_path=$domain/screenshots
	scan_path=$domain/scans
	directories_path=$domain/directories

	if [ ! -d "$domain" ];then
		mkdir $domain
	fi

	if [ ! -d "$subdomain_path" ];then
		mkdir $subdomain_path
	fi

	if [ ! -d "$screenshot_path" ];then
		mkdir $screenshot_path
	fi

	if [ ! -d "$scan_path" ];then
		mkdir $scan_path
	fi

	echo -e "${GREEN}
╭────────────────────────────────────────────────────────╮
│         🦝 Starting subdomain enumeration... 🦝        │
╰────────────────────────────────────────────────────────╯
${RESET}"

	echo -e "${BLUE} 🦝 Launching subfinder... ${RESET}"
	subfinder -d $domain > $subdomain_path/found_subdomains.txt

	echo -e "${GREEN}\n 🦝 Launching assetfinder... ${RESET}"
	assetfinder $domain | grep $domain >> $subdomain_path/found_subdomains.txt

	echo -e "${BLUE} 🦝 Launching amass... ${RESET}"
	amass enum -d $domain >> $subdomain_path/found_subdomains.txt

	echo -e "${GREEN}\n 🦝 Detecting alive subdomains... ${RESET}"
	cat $subdomain_path/found_subdomains.txt | grep $domain | sort -u | httprobe -prefer-https | grep https | sed 's/https\?:\/\///' | tee -a $subdomain_path/alive_subdomains.txt

	echo "$domain" >> "$subdomain_path/alive_subdomains.txt"	
	#sed '/^$/d' $subdomain_path/alive_subdomains.txt > $subdomain_path/alive.txt
	alive_subdomains=$(cat $subdomain_path/alive_subdomains.txt | grep -vE '^\*|^\.')

	echo -e "${BLUE}
╭────────────────────────────────────────────────────────╮
│             🦝 Alive subdomains found: 🦝              │
╰────────────────────────────────────────────────────────╯
${RESET}"
	
	if [ -z "$alive_subdomains" ]; then
		echo -e "${GREEN} 🥀 None${RESET}"
	else
		for subdomain in $(cat $subdomain_path/alive_subdomains.txt); do
			echo -e "${GREEN} 🌐 $subdomain${RESET}"
		done
	fi	

	echo -e "${BLUE}
╭────────────────────────────────────────────────────────╮
│         🦝 Screenshoting alive subdomains... 🦝        │
╰────────────────────────────────────────────────────────╯
${RESET}"

	gowitness file -f $subdomain_path/alive_subdomains.txt -P $screenshot_path/ --no-http
	echo -e "${GREEN}\n 🦝 The screenshots can be found at $screenshot_path${RESET}"

	echo -e "${BLUE}
╭────────────────────────────────────────────────────────╮
│             🦝 Detecting firewalls... 🦝               │
╰────────────────────────────────────────────────────────╯
${RESET}"

	#echo -e "${GREEN} 🦝 Detecting firewall for https://$domain... ${RESET}"
	#echo -e "${GREEN}─────────────────────────────────────────────────────────────────${RESET}"
	#wafw00f https://$domain

	for subdomain in $alive_subdomains; do
		echo -e "${GREEN}\n\n 🦝 Detecting firewall for https://$subdomain... ${RESET}"
		echo -e "${GREEN}─────────────────────────────────────────────────────────────────${RESET}"
		wafw00f https://$subdomain
	done

	echo -e "${GREEN}
╭────────────────────────────────────────────────────────╮
│            🦝 Detecting technologies... 🦝             │
╰────────────────────────────────────────────────────────╯
${RESET}"

		#echo -e "${GREEN}\n 🦝 Detecting technologies for https://$domain... ${RESET}"
		#echo -e "${GREEN}─────────────────────────────────────────────────────────────────${RESET}"	
		#whatweb https://$domain

	for subdomain in $alive_subdomains; do
		echo -e "${GREEN}\n\n 🦝 Detecting technologies for https://$subdomain... ${RESET}"
		echo -e "${GREEN}─────────────────────────────────────────────────────────────────${RESET}"
		whatweb https://$subdomain
	done

	echo -e "${BLUE}
╭────────────────────────────────────────────────────────╮
│        🦝 Running nmap on alive subdomains... 🦝       │
╰────────────────────────────────────────────────────────╯
${RESET}"

	sudo nmap -iL $subdomain_path/alive_subdomains.txt - -sSVC -Pn -p- -v -oN $scan_path/nmap_results.txt

	echo -e "${GREEN}
╭────────────────────────────────────────────────────────╮
│         🦝 Starting directory enumeration... 🦝        │
╰────────────────────────────────────────────────────────╯
${RESET}"

    echo -e "${GREEN} 🦝 Launching feroxbuster ...${RESET}"
	for subdomain in $alive_subdomains; do
		#echo -e "${BLUE}\n\n 🦝 Scanning https://$domain :${RESET}"
		#echo -e "${BLUE}─────────────────────────────────────────────${RESET}"
		#mkdir -p $directories_path/$domain
		#feroxbuster -u https://$domain -w dir-wordlist.txt --no-state --scan-limit 1 --threads 12 --auto-tune --silent -E -I css,svg,ico,png,jpg -r -C 404 -o $directories_path/$domain/found_directories.txt						
		echo -e "${GREEN}\n\n 🦝 Scanning https://$subdomain :${RESET}"
		echo -e "${GREEN}─────────────────────────────────────────────${RESET}"
		mkdir -p $directories_path/$subdomain
		feroxbuster -u https://$subdomain -w dir-wordlist.txt --no-state --scan-limit 1 --threads 10 --auto-tune --silent -E -I css,svg,ico,png,jpg -r -C 404 -o $directories_path/$subdomain/found_directories.txt
	done

	echo -e "${BLUE}
╭────────────────────────────────────────────────────────╮
│           🦝 Detecting URL parameters... 🦝            │
╰────────────────────────────────────────────────────────╯
${RESET}"

	python3 ParamSpider/paramspider.py --domain $domain -o $directories_path/url-params.txt
	echo -e "${GREEN}\n 🦝 Results saved to $directories_path/url-params.txt...${RESET}"

	echo -e "${GREEN}
╭────────────────────────────────────────────────────────╮
│       🦝 Searching for secrets in JS files... 🦝       │
╰────────────────────────────────────────────────────────╯
${RESET}"
	
	echo -e "${GREEN} 🦝 Detecting JS files ...${RESET}"
	
	#katana -u $domain -jc | grep ".js$" > $directories_path/js_files.txt

	#cat $directories_path/$domain/found_directories.txt | grep ".js$" >> $directories_path/js_files.txt
	
	for subdomain in $alive_subdomains; do
		#katana -u $subdomain -jc | grep ".js$" >> $directories_path/js_files.txt
		cat $directories_path/$subdomain/found_directories.txt | grep ".js$" > $directories_path/js_files.txt
	done

	js_files=$(cat $directories_path/js_files.txt | sort -u)

	echo -e "${BLUE} 🦝 Searching for secrets ...${RESET}"

	cat $directories_path/js_files.txt | while read url; do python3 secretfinder/SecretFinder.py -i $url -o cli >> $directories_path/secrets.txt; done
	cat secrets.txt

    echo -e "\n${GREEN}
╭─────────────────────────────────────────────────────────────╮
│               🦝 Raccoonaissance is done!  🦝               │
╰─────────────────────────────────────────────────────────────╯
${RESET}"

	echo -e "🐾   🐾   🐾   🐾   🐾   🐾  🐾   🐾   🐾   🐾   🐾   🐾   🐾   🐾"

fi
