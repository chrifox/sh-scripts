# Edit PS1
# default
# \[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$
# custom
USERNAME="$(tput setaf 10)$(tput bold)\u$(tput sgr0)"
WD="$(tput setaf 12)$(tput bold)\W$(tput sgr0)"
# 💀
# 💻
ICON="$(tput setaf 3)\$$(tput sgr0)"
export PS1="💀 ${USERNAME} 💻 ${WD}${ICON}"
