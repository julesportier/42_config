# Install programs without root
## bear compilation
[bear's github INSTALL.md](https://github.com/rizsotto/Bear/blob/master/INSTALL.md)
``` sh
cmake -DENABLE_UNIT_TESTS=OFF -DENABLE_FUNC_TESTS=OFF -D -DCMAKE_INSTALL_PREFIX:PATH=/$HOME/bin .
make all
make install
```
## install prebuild wezterm package
``` sh
dpkg -x wezterm-20240203-110809-5046fc22.Ubuntu22.04.deb $HOME/.local/share/wezterm
```
## install nvim appimage
`chmod u+x nvim-linux-x86_64.appimage && ./nvim-linux-x86_64.appimage`
- if not working with FUSE at school, unpack the file:
``` sh
./nvim-linux-x86_64.appimage --appimage-extract
./squashfs-root/usr/bin/nvim
```
## install ceedling gem
`ruby gem --user-install ceedling`
add ruby gem dir to path (in ~/.profile for example): `PATH=$PATH:~/.local/share/gem/ruby/3.0.0/bin`

## add conpiled programs to PATH
- check that ~/bin is in PATH
`~/sources/` or `~/bin/` or `~/.local/share` are arbitrary
``` sh
ln -s ~/bin/bin/bear ~/bin/bear
ln -s ~/sources/alacritty/target/release/alacritty ~/bin/alacritty
ln -s ~/.local/share/wezterm/usr/bin/wezterm ~/bin/wezterm
ln -s ~/bin/squashfs-root/usr/bin/nvim ~/bin/nvim
```
