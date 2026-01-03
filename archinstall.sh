#!/bin/bash
packages=(

	# basic package for sway
	sway -
	swaylock
	swayidle
	swaybg
	swaync -
	mako -
	networkmanager
	brightnessctl
	grim slurp foot -
	pipewire
	wireplumber
	wayland
	wayland-protocols
	xorg-xwayland
	xdg-desktop-portal-wlr

	# fonts
	otf-font-awesome
	ttf-cascadia-code-nerd
	#tambahkan font bagus lain

	# support package for sway
	mpv mpv-mpris
	wofi -
	waybar
	blueman
	# playerctl -
	alacritty -
	wf-recorder
	power-profiles-daemon

	# terminal support tools
	figlet
	lolcat
	axel
	fastfetch -
	htop -
	trash-cli
	zsh -
	neovim -
	git
	man
	zip unzip

	# gui tools
	totem
	eog
	#rhythmbox
	nautilus -
	firefox -
	pavucontrol

	# display manager & DE
	sddm -
	#cinnamon

)


for pkg in ${packages[@]}; do
	sudo pacman -S ${pkg} --noconfirm --needed
done;
