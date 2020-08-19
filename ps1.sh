# Edit PS1

## Docs (brief)
## Set graphics mode
# Esc[Value;...;Valuem

# Text attributes
# 0	All attributes off
# 1	Bold on
# 4	Underscore (on monochrome display adapter only)
# 5	Blink on
# 7	Reverse video on
# 8	Concealed on
  
# Foreground colors
# 30	Black
# 31	Red
# 32	Green
# 33	Yellow
# 34	Blue
# 35	Magenta
# 36	Cyan
# 37	White

# Background colors
# 40	Black
# 41	Red
# 42	Green
# 43	Yellow
# 44	Blue
# 45	Magenta
# 46	Cyan
# 47	White

## emoji
# 💀
# 💻

## custom
DATETIME="\[\033[31m\]\D{%a %d/%m/%Y} \t"
WDIR="\[\033[01;34m\]\w"
TERM_USER="\[\033[01;32m\]\u\[\033[33m\]\$"

export PS1="$DATETIME\n$WDIR\n$TERM_USER \[\033[00m\]"

