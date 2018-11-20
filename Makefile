CONFIGDIR := ~/$(CONFIGDIR)

install: install-zsh \
		 install-vim \
		 install-i3 \
		 install-i3status \
		 install-x install-git \
	 	 install-marrie \
		 install-mpd \
		 install-ncmpcpp \
		 install-beets \
		 install-dunst \
		 install-rofi \
		 install-termite \
		 install-cwm \
		 install-conky

clean:
	-rm ~/.zshrc.dotbak
	-rm ~/.zprofile.dotbak
	-rm -r ~/.zsh-custom.dotbak
	-rm -r ~/.vim.dotbak
	-rm ~/.vimrc.dotbak
	-rm -r ~/$(CONFIGDIR)/i3.dotbak
	-rm -r ~/$(CONFIGDIR)/i3status.dotbak
	-rm ~/.xinitrc.dotbak	
	-rm ~/.Xresources.dotbak	
	-rm ~/.gitconfig.dotbak
	-rm ~/.marrie.dotbak
	-rm ~/$(CONFIGDIR)/mpd/mpd.conf.dotbak
	-rm -r ~/$(CONFIGDIR)/ncmpcpp.dotbak
	-rm ~/$(CONFIGDIR)/beets/config.yaml.dotbak
	-rm -r ~/$(CONFIGDIR)/dunst.dotbak
	-rm -r ~/$(CONFIGDIR)/rofi.dotbak
	-rm -r ~/$(CONFIGDIR)/termite.dotbak
	-rm -r ~/$(CONFIGDIR)/conky.dotbak

install-zsh:
	-mv ~/.zshrc ~/.zshrc.dotbak
	-mv ~/.zprofile ~/.zprofile.dotbak
	-mv ~/.zsh-custom ~/.zsh-custom.dotbak
	-mv ~/.zshenv ~/.zshenv.dotbak
	ln -s `pwd`/zsh/zshrc ~/.zshrc
	ln -s `pwd`/zsh/zprofile ~/.zprofile
	ln -s `pwd`/zsh/custom ~/.zsh-custom
	ln -s `pwd`/zsh/zshenv ~/.zshenv

install-vim:
	-mv ~/.vim ~/.vim.dotbak
	-mv ~/.vimrc ~/.vimrc.dotbak
	ln -s `pwd`/vim ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc

install-i3:
	-mv ~/$(CONFIGDIR)/i3 ~/$(CONFIGDIR)/i3.dotbak
	ln -s `pwd`/i3 ~/$(CONFIGDIR)/i3

install-i3status:
	-mv ~/$(CONFIGDIR)/i3status ~/$(CONFIGDIR)/i3status.dotbak
	ln -s `pwd`/i3status ~/$(CONFIGDIR)/i3status

install-cwm:
	-mv ~/.cwmrc ~/.cwmrc.dotbak
	ln -s `pwd`/cwm/cwmrc ~/.cwmrc

install-x:
	-mv ~/.xinitrc ~/.xinitrc.dotbak
	-mv ~/.Xresources ~/.Xresources.dotbak
	-mv ~/.xbindkeysrc ~/.xbindkeysrc.dotbak
	ln -s `pwd`/X/xinitrc ~/.xinitrc
	ln -s `pwd`/X/Xresources ~/.Xresources
	ln -s `pwd`/X/xbindkeysrc ~/.xbindkeysrc

install-git:
	-mv ~/.gitconfig ~/.gitconfig.dotbak
	ln -s `pwd`/gitconfig ~/.gitconfig

install-marrie:
	-mv ~/.marrie ~/.marrie.dotbak
	ln -s `pwd`/marrie ~/.marrie

install-mpd:
	-mv ~/$(CONFIGDIR)/mpd/mpd.conf ~/$(CONFIGDIR)/mpd/mpd.conf.dotbak
	ln -s `pwd`/mpd/mpd.conf ~/$(CONFIGDIR)/mpd/mpd.conf

install-ncmpcpp:
	-mv ~/$(CONFIGDIR)/ncmpcpp ~/$(CONFIGDIR)/ncmpcpp.dotbak
	ln -s `pwd`/ncmpcpp ~/$(CONFIGDIR)/ncmpcpp

install-beets:
	-mv ~/$(CONFIGDIR)/beets/config.yaml ~/$(CONFIGDIR)/beets/config.yaml.dotbak
	ln -s `pwd`/beets/config.yaml ~/$(CONFIGDIR)/beets/config.yaml

install-dunst:
	-mv ~/$(CONFIGDIR)/dunst ~/$(CONFIGDIR)/dunst.dotbak
	ln -s `pwd`/dunst ~/$(CONFIGDIR)/dunst

install-rofi:
	-mv ~/$(CONFIGDIR)/rofi ~/$(CONFIGDIR)/rofi.dotbak
	ln -s `pwd`/rofi ~/$(CONFIGDIR)/rofi

install-termite:
	-mv ~/$(CONFIGDIR)/termite ~/$(CONFIGDIR)/termite.dotbak
	ln -s `pwd`/termite ~/$(CONFIGDIR)/termite

install-conky:
	-mv ~/$(CONFIGDIR)/conky ~/$(CONFIGDIR)/conky.dotbak
	mkdir -p ~/$(CONFIGDIR)/conky
	ln -s `pwd`/conky/conky.conf ~/$(CONFIGDIR)/conky/conky.conf
