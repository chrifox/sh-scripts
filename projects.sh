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

alias fp="cd $FLIX && tput setaf 56 && figlet Flix Premiere && tput sgr0"
alias web="cd $FP_WEB"
alias stv="cd $FP_STV"
alias mob="cd $FP_MOB"
alias email="cd $FP_EMAIL"
alias common="cd $FP_COMMON"
alias fpbs="fp && yarn bootstrap"

# WARNING - this will remove all node_modules/
alias fpnuke="fp && nuke && web && nuke && stv && nuke && mob && nuke && email && nuke && fp"

alias mobdev="adb shell input keyevent 82"
alias rndebug="open 'rndebugger://set-debugger-loc?host=localhost&port=8081'"

# Entrepreneur seminar
export ES=$PROJECTS/entrepreneur-seminar
alias es="cd $ES"
