#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# use vim commands on the command line
set -o vi 

#--[[ BASH HISTORY ]]--
HISTCONTROL=ignoredups
HISTSIZE=1000   # how many commands on active session
HISTFILESIZE=1000   # how many saved for the future

#--[[ EXPORTS ]]--
EDITOR=nvim
VISUAL=nvim
BROWSER='mullvad-browser'
if [ -x "$(command -v $EDITOR)" ]; then
    export EDITOR
else
    printf "'%s' not installed!\n" $EDITOR >&2
    unset EDITOR
fi
if [ -x "$(command -v $VISUAL)" ]; then
    export VISUAL
else
    printf "'%s' not installed!\n" $VISUAL >&2
    unset VISUAL
fi
if [ -x "$(command -v $BROWSER)" ]; then
    export BROWSER
else
    printf "'%s' not installed!\n" $BROWSER >&2
    unset BROWSER
fi
#timeformat for ls -l
#FORMAT = FORMAT1<linebreak>FORMAT2
export TIME_STYLE=+" %_d. %b  %Y ***
 %_d. %b %_H:%M ***"

#--[[ IMPORTS ]]--
bashpath=~/Documents/code/scripts/scripts-n-stuff
[ -f $bashpath/bashrc_ansif ] && . $bashpath/bashrc_ansif
[ -f $bashpath/bashrc_promp ] && . $bashpath/bashrc_promp
[ -f $bashpath/bashrc_funcs ] && . $bashpath/bashrc_funcs
[ -f $bashpath/bashrc_alias ] && . $bashpath/bashrc_alias
unset bashpath

#--[[ PROMPT ]]--
# ~/.bashrc_promp > get-prompted
PS0=$(get-prompted ps0)
PS1=$(get-prompted iknowwhoiam)

#--[[ ALIAS ]]--
# ~/.bashrc_alias

#--[[ FUNCS ]]--
# ~/.bashrc_funcs

