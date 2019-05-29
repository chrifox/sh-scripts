# $SCRIPTS/projects.sh

export PROJECTS=$HOME/projects

alias projects="cd $PROJECTS && ls"

# Flix Premiere
export FLIX=$PROJECTS/flix-premiere-web-app
export FP_APPS=$FLIX/apps
export FP_WEB=$FP_APPS/web-app
export FP_STV=$FP_APPS/smart-tv
export FP_MOB=$FP_APPS/mobile
export FP_EMAIL=$FP_APPS/email
export FP_COMMON=$FP_APPS/common

alias fp="cd $FLIX && figlet Flix Premiere"
alias web="cd $FP_WEB && figlet Flix Web"
alias stv="cd $FP_STV && figlet Flix STV"
alias mob="cd $FP_MOB && figlet Flix Mobile"
alias email="cd $FP_EMAIL && figlet Flix Email"
alias common="cd $FP_COMMON && figlet Flix Common"
alias fpbs="fp && yarn bootstrap"

# WARNING - this will remove all node_modules/
alias fpnuke="fp && nuke && web && nuke && stv && nuke && mob && nuke && email && nuke && fp"

alias mobdev="adb shell input keyevent 82"
alias rndebug="open 'rndebugger://set-debugger-loc?host=localhost&port=8081'"

# Entrepreneur seminar
export ES=$PROJECTS/entrepreneur-seminar
alias es="cd $ES"

export PROJECTS=$PROJECTS:$FLIX
export PROJECTS=$PROJECTS:$FP_WEB
export PROJECTS=$PROJECTS:$FP_STV
export PROJECTS=$PROJECTS:$FP_MOB
export PROJECTS=$PROJECTS:$FP_EMAIL
export PROJECTS=$PROJECTS:$FP_COMMON

export PROJECTS=$PROJECTS:$ES

export PATH=$PATH:$PROJECTS
