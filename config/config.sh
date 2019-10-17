# $SCRIPTS/config.sh

# Configure which scripts you want to use in here

SD=$SCRIPTS

source $SD/.git_completion.sh

source $SD/ps1.sh
source $SD/aliases.sh
source $SD/colors.sh
source $SD/grep.sh
source $SD/helpers.sh
source $SD/loaders.sh
source $SD/textEdit.sh

# # Uncomment below to load all scripts
# for file in $SD/*.sh; do
# source $file
# done
