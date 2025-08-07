#!/bin/sh


echo "Installing wlroots 0.18" # is needed to compile dwl 0.7
sudo pacman -S wlroots0.18 --needed


echo "Deploying dot_dwl configs"
cp -rf ./dot_bash_profile $HOME/.bash_profile
cp -rf ./dot_bashrc $HOME/.bashrc


if [ ! -d "$HOME/.fonts" ]; then
	mkdir -p $HOME/.fonts
fi
cp -rf ./dot_fonts/* $HOME/.fonts/


if [ ! -d "$HOME/.config" ]; then
	mkdir -p $HOME/.config
fi
cp -rf ./dot_config/* $HOME/.config/


# compile dwl as a last step of deploying
cd $HOME/.config/dwl-v0.7/
rm -f config.h
sudo make clean install


echo "Done."
