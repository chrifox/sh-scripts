## Bash scripts for general use

Generic scripts that can be used to make life easier, or just a little more fun.

#### Getting Started

Inside `$HOME/.bash_profile` or `$HOME/.bashrc`

Export a SCRIPTS variable containing your cloned directory location:
```
export SCRIPTS=$HOME/scripts
```

Add this line to load scripts:
```
source $SCRIPTS/config/config.sh
```

Edit `config/config.sh` to customize which scripts to load.

Don't forget to reload after these changes have been made.

Simples.
