install: install-zsh install-vim install-i3 install-i3status install-x install-git \
	 install-marrie install-mpd install-ncmpcpp install-beets install-dunst    \
	 install-rofi install-termite install-cwm

clean:
	rm ~/.zshrc.dotbak
	rm ~/.zprofile.dotbak
	rm -r ~/.zsh-custom.dotbak
	rm -r ~/.vim.dotbak
	rm ~/.vimrc.dotbak
	rm -r ~/.config/i3.dotbak
	rm -r ~/.config/i3status.dotbak
	rm ~/.xinitrc.dotbak	
	rm ~/.Xresources.dotbak	
	rm ~/.gitconfig.dotbak
	rm ~/.marrie.dotbak
	rm ~/.config/mpd/mpd.conf.dotbak
	rm -r ~/.config/ncmpcpp.dotbak
	rm ~/.config/beets/config.yaml.dotbak
	rm -r ~/.config/dunst.dotbak
	rm -r ~/.config/rofi.dotbak
	rm -r ~/.config/termite.dotbak

install-zsh:
	mv ~/.zshrc ~/.zshrc.dotbak
	mv ~/.zprofile ~/.zprofile.dotbak
	mv ~/.zsh-custom ~/.zsh-custom.dotbak
	mv ~/.zshenv ~/.zshenv.dotbak
	ln -s `pwd`/zsh/zshrc ~/.zshrc
	ln -s `pwd`/zsh/zprofile ~/.zprofile
	ln -s `pwd`/zsh/custom ~/.zsh-custom
	ln -s `pwd`/zsh/zshenv ~/.zshenv

install-vim:
	mv ~/.vim ~/.vim.dotbak
	mv ~/.vimrc ~/.vimrc.dotbak
	ln -s `pwd`/vim ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc

install-i3:
	mv ~/.config/i3 ~/.config/i3.dotbak
	ln -s `pwd`/i3 ~/.config/i3

install-i3status:
	mv ~/.config/i3status ~/.config/i3status.dotbak
	ln -s `pwd`/i3status ~/.config/i3status

install-cwm:
	mv ~/.cwmrc ~/.cwmrc.dotbak
	ln -s `pwd`/cwm/cwmrc ~/.cwmrc

install-x:
	mv ~/.xinitrc ~/.xinitrc.dotbak
	mv ~/.Xresources ~/.Xresources.dotbak
	mv ~/.xbindkeysrc ~/.xbindkeysrc.dotbak
	ln -s `pwd`/X/xinitrc ~/.xinitrc
	ln -s `pwd`/X/Xresources ~/.Xresources
	ln -s `pwd`/X/xbindkeysrc ~/.xbindkeysrc

install-git:
	mv ~/.gitconfig ~/.gitconfig.dotbak
	ln -s `pwd`/gitconfig ~/.gitconfig

install-marrie:
	mv ~/.marrie ~/.marrie.dotbak
	ln -s `pwd`/marrie ~/.marrie

install-mpd:
	mv ~/.config/mpd/mpd.conf ~/.config/mpd/mpd.conf.dotbak
	ln -s `pwd`/mpd/mpd.conf ~/.config/mpd/mpd.conf

install-ncmpcpp:
	mv ~/.config/ncmpcpp ~/.config/ncmpcpp.dotbak
	ln -s `pwd`/ncmpcpp ~/.config/ncmpcpp

install-beets:
	mv ~/.config/beets/config.yaml ~/.config/beets/config.yaml.dotbak
	ln -s `pwd`/beets/config.yaml ~/.config/beets/config.yaml

install-dunst:
	mv ~/.config/dunst ~/.config/dunst.dotbak
	ln -s `pwd`/dunst ~/.config/dunst

install-rofi:
	mv ~/.config/rofi ~/.config/rofi.dotbak
	ln -s `pwd`/rofi ~/.config/rofi

install-termite:
	mv ~/.config/termite ~/.config/termite.dotbak
	ln -s `pwd`/termite ~/.config/termite
