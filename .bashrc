#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


###---[ ENV VARS ]---###
BROWSER=
EDITOR=vim
TIME_STYLE=

#use vim commands on the command line
set -o vi 

if [ -x "$(command -v links)" ]; then
    BROWSER='links'
elif [ -x "$(command -v mullvad-browser)" ]; then
    BROWSER='mullvad-browser'
elif [ -x "$(command -v firefox)" ]; then
    BROWSER='firefox'
fi

# ls -l default time format
form1=' %_d. %b  %Y ***'
form2=' %_d. %b %_H:%M ***'
printf -v TIME_STYLE '+%s\n%s' "$form1" "$form2" 
unset form1 form2

export TIME_STYLE


###---[ BASH HISTORY ]---###
HISTCONTROL=ignoredups
HISTSIZE=1000   # how many commands on active session
HISTFILESIZE=1000   # how many saved for the future


###---[ SOURCERER ]---### 
[[ -f ~/.bashrc_ansif ]] && . ~/.bashrc_ansif
[[ -f ~/.bashrc_funcs ]] && . ~/.bashrc_funcs
[[ -f ~/.bashrc_alias ]] && . ~/.bashrc_alias


###---[ PROMPT ]---###
# ~/.bashrc_funcs > get-prompted
PS0=$(get-prompted ps0)
PS1=$(get-prompted eosgoat)


###---[ SPLASH ]---### 
# ~/.bashrc_funcs > get-splashed
get-splashed


###---[ ALIAS ]---###
# ~/.bashrc_alias


###---[ FUNCS ]---###
# ~/.bashrc_funcs

