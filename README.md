# Bash scripts for general use

Generic scripts that can be used to make life easier, or just a little more fun.

## Getting Started

Inside `.bashrc` or `.bash_profile`

Export a SCRIPTS variable containing your cloned directory location
```
export SCRIPTS=$HOME/sh-scripts
```

Create your config file by running
```
cp config/config.example.sh config/config.sh
```

Edit `config/config.sh` to customize which scripts to load

Add this line to your `.bashrc` or `.bash_profile` to load your config file
```
source $SCRIPTS/config/config.sh
```

Don't forget to reload `.bashrc` or `.bash_profile` after these changes have been made.

Simples.

### Future updates

C++ setup for easier scripts configuration

