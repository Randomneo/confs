cp .Xdefaults ~/.Xdefaults
mkdir -p ~/.emacs.d/conf
cp base.el ~/.emacs.d/conf/base.el
mkdir ~/.config/
cp .zshrc ~/zshrc
cp -r awesome ~/.config/awesome
sudo cp 00-keyboard.conf /etc/X11/xorg.conf.d/00-keyboard.conf
