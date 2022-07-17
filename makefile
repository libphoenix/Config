# installing all config files
# using stow
install:
	stow bash
	stow xorg
	if [ ! -d ~/.config ]; then mkdir ~/.config; fi

	if [ ! -d ~/.emacs.d ]; then mkdir -p ~/.emacs.d; fi
	stow -t ~/.emacs.d  emacs

	if [ ! -d ~/.config/alacritty ]; then mkdir -p ~/.config/alacritty; fi
	stow -t ~/.config/alacritty alacritty

	if [ ! -d ~/.config/dunst ]; then mkdir -p ~/.config/dunst; fi
	stow -t ~/.config/dunst dunst

	if [ ! -d ~/.config/eww ]; then mkdir -p ~/.config/eww; fi
	stow -t ~/.config/eww eww

	if [ ! -d ~/.config/neofetch ]; then mkdir -p ~/.config/neofetch; fi
	stow -t ~/.config/neofetch neofetch

	if [ ! -d ~/.config/nvim ]; then mkdir -p ~/.config/nvim; fi
	stow -t ~/.config/nvim nvim

	if [ ! -d ~/.config/scripts ]; then mkdir -p ~/.config/scripts; fi
	stow -t ~/.config/scripts scripts

	if [ ! -d ~/.config/audio ]; then mkdir -p ~/.config/audio; fi
	stow -t ~/.config/audio audio

	if [ ! -d ~/.config/btop ]; then mkdir -p ~/.config/btop; fi
	stow -t ~/.config/btop btop

	if [ ! -d ~/.config/icons ]; then mkdir -p ~/.config/icons; fi
	stow -t ~/.config/icons icons

	if [ ! -d ~/.config/nitrogen ]; then mkdir -p ~/.config/nitrogen; fi
	stow -t ~/.config/nitrogen nitrogen

	if [ ! -d ~/.config/qutebrowser ]; then mkdir -p ~/.config/qutebrowser; fi
	stow -t ~/.config/qutebrowser qutebrowser

	if [ ! -d ~/.config/rofi ]; then mkdir -p ~/.config/rofi; fi
	stow -t ~/.config/rofi rofi
clean:
	stow -D bash
	stow -D xorg
	if [ -d ~/.emacs.d ]; then rm -rf ~/.emacs.d; fi
	if [ -d ~/.config/alacritty ]; then rm -r ~/.config/alacritty; fi
	if [ -d ~/.config/dunst ]; then rm -r ~/.config/dunst; fi
	if [ -d ~/.config/eww ]; then rm -r ~/.config/eww; fi
	if [ -d ~/.config/neofetch ]; then rm -r ~/.config/neofetch; fi
	if [ -d ~/.config/nvim ]; then rm -rf ~/.config/nvim; fi
	if [ -d ~/.config/scripts ]; then rm -r ~/.config/scripts ; fi
	if [ -d ~/.config/audio ]; then rm -r ~/.config/audio; fi
	if [ -d ~/.config/btop ]; then rm -r ~/.config/btop; fi
	if [ -d ~/.config/nitrogen ]; then rm -r ~/.config/nitrogen; fi
	if [ -d ~/.config/rofi ]; then rm -r ~/.config/rofi; fi
	if [ -d ~/.config/icons ]; then rm -r ~/.config/icons; fi
	if [ -d ~/.config/qutebrowser ]; then rm -r ~/.config/qutebrowser; fi

