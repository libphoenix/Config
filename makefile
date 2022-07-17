# installing all config files
# using stow
install:
	stow bash
	stow xorg
	if [ ! -d ../.config ]; then mkdir ../.config; fi

	if [ ! -d ../.emacs.d ]; then mkdir -p ../.emacs.d; fi
	stow -t ../.emacs.d  emacs

	if [ ! -d ../.config/alacritty ]; then mkdir -p ../.config/alacritty; fi
	stow -t ../.config/alacritty alacritty

	if [ ! -d ../.config/dunst ]; then mkdir -p ../.config/dunst; fi
	stow -t ../.config/dunst dunst

	if [ ! -d ../.config/eww ]; then mkdir -p ../.config/eww; fi
	stow -t ../.config/eww eww

	if [ ! -d ../.config/neofetch ]; then mkdir -p ../.config/neofetch; fi
	stow -t ../.config/neofetch neofetch

	if [ ! -d ../.config/nvim ]; then mkdir -p ../.config/nvim; fi
	stow -t ../.config/nvim nvim

	if [ ! -d ../.config/scripts ]; then mkdir -p ../.config/scripts; fi
	stow -t ../.config/scripts scripts

	if [ ! -d ../.config/audio ]; then mkdir -p ../.config/audio; fi
	stow -t ../.config/audio audio
clean:
	stow -D bash
	stow -D xorg
	if [ -d ../.emacs.d ]; then rm -r ../.emacs.d; fi
	if [ -d ../.config/alacritty ]; then rm -r ../.config/alacritty; fi
	if [ -d ../.config/dunst ]; then rm -r ../.config/dunst; fi
	if [ -d ../.config/eww ]; then rm -r ../.config/eww; fi
	if [ -d ../.config/neofetch ]; then rm -r ../.config/neofetch; fi
	if [ -d ../.config/nvim ]; then rm -r ../.config/nvim; fi
	if [ -d ../.config/scripts ]; then rm -r ../.config/scripts ; fi
	if [ -d ../.config/audio ]; then rm -r ../.config/audio; fi

