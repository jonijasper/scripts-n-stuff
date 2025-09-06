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
[ -f ~/.bashrc_ansif ] && . ~/.bashrc_ansif
[ -f ~/.bashrc_promp ] && . ~/.bashrc_promp
[ -f ~/.bashrc_funcs ] && . ~/.bashrc_funcs
[ -f ~/.bashrc_alias ] && . ~/.bashrc_alias

#--[[ PROMPT ]]--
# ~/.bashrc_promp > get-prompted
PS0=$(get-prompted ps0)
PS1=$(get-prompted iknowwhoiam)

#--[[ ALIAS ]]--
# ~/.bashrc_alias
alias wc3="cd ~/Games/warcraft-iii-the-frozen-throne/drive_c/users/$USER/Documents/Warcraft\ III/CustomKeyBindings"

#--[[ FUNCS ]]--
# ~/.bashrc_funcs 

