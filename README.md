## Bash scripts for general use

Generic scripts that can be used to make life easier, or just a little more fun.

#### Getting Started

Inside `$HOME/.bash_profile` or `$HOME/.bashrc` you can create the `SCRIPTS` variable

For example if you clone into `$HOME` it will be as follows:

```
export SCRIPTS=$HOME/scripts
```

Then simply load the .sh files from `$SCRIPTS` like so:

```
for file in $SCRIPTS/*.sh
do
  . $file
done
```
