# $SCRIPTS/config.sh

# Configure which scripts you want to use in here

SD=$SCRIPTS

source $SD/.git_completion.sh

source $SD/aliases.sh
source $SD/grep.sh
source $SD/helpers.sh
source $SD/loaders.sh

# # Uncomment below to load all scripts
# for file in $SD/*.sh; do
# source $file
# done
