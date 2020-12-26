#! /usr/bin/env bash

FILE=~/.oh-my-bash
if [ -d "$FILE" ];

then
	echo "You already have oh-my-bash"
else
	exec bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
fi

FILE=/usr/bin/git

if [ -f "$FILE" ];
then 
	echo "You already have git"
else 
	exec sudo apt install git
fi

FILE=~/.oh-my-bash/themes/sexy-wanelo

if [ -d "$FILE" ];
then 
	echo "**********************************"
	echo "* The theme is already installed *"
	echo "**********************************"
else 
	exec git clone https://github.com/fernando-gap/sexy-wanelo.git ~/.oh-my-bash/themes/sexy-wanelo
	
	echo ""
	echo ""
	echo "************************"
	echo "* Succefull  installed *"
	echo "************************"

fi


