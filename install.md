# Install programs without root
## bear compilation
[bear's github INSTALL.md](https://github.com/rizsotto/Bear/blob/master/INSTALL.md)
``` sh
cmake -DENABLE_UNIT_TESTS=OFF -DENABLE_FUNC_TESTS=OFF -D -DCMAKE_INSTALL_PREFIX:PATH=/$HOME/bin .
make all
make install
```

## add conpiled programs to PATH
- check that ~/bin is in PATH
sources/ is arbitrary
``` sh
ln -s ~/bin/bin/bear ~/bin/bear
ln -s ~/sources/alacritty/target/release/alacritty ~/bin/alacritty
```
