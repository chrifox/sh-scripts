# $SCRIPTS/tput.sh

# tput setab   # Set the background colour using ANSI escape
# tput setaf   # Set the foreground colour using ANSI escape

# MODE
# tput bold    # Select bold mode
# tput dim     # Select dim (half-bright) mode
# tput smul    # Enable underline mode
# tput rmul    # Disable underline mode
# tput rev     # Turn on reverse video mode
# tput smso    # Enter standout (bold) mode
# tput rmso    # Exit standout mode

# POSITION
# tput cup Y X # Move cursor to screen postion X,Y (top left is 0,0)
# tput cuf N   # Move N characters forward (right)
# tput cub N   # Move N characters back (left)
# tput cuu N   # Move N lines up
# tput ll      # Move to last line, first column (if no cup)
# tput sc      # Save the cursor position
# tput rc      # Restore the cursor position
# tput lines   # Output the number of lines of the terminal
# tput cols    # Output the number of columns of the terminal

# CLEAR/INSERT
# tput ech N   # Erase N characters
# tput clear   # Clear screen and move the cursor to 0,0
# tput el 1    # Clear to beginning of line
# tput el      # Clear to end of line
# tput ed      # Clear to end of screen
# tput ich N   # Insert N characters (moves rest of line forward!)
# tput il N    # Insert N lines

# OTHER
# tput sgr0    # Reset text format to the terminal's default
# tput bel     # Play a bell
# tput civis   # Hide cursor (invisible)
# tput cnorm   # Reset cursor
