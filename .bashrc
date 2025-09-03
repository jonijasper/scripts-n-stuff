#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#use vim commands on the command line
set -o vi 

###---[ IMPORTS ]---### 
[[ -f ~/.bashrc_ansif ]] && . ~/.bashrc_ansif
[[ -f ~/.bashrc_promp ]] && . ~/.bashrc_promp
[[ -f ~/.bashrc_funcs ]] && . ~/.bashrc_funcs
[[ -f ~/.bashrc_alias ]] && . ~/.bashrc_alias
[[ -f ~/.bashrc_upbtw ]] && . ~/.bashrc_upbtw

###---[ EXPORTS ]---###
export EDITOR=vim
# ls -l 
# FORMAT=FORMAT1<linebreak>FORMAT2
export TIME_STYLE=+" %_d. %b  %Y ***
 %_d. %b %_H:%M ***"
# browsers
[[ -x "$(command -v mullvad-browser)" ]] && export BROWSER='mullvad-browser'
#[[ -x "$(command -v firefox)" ]] && export BROWSER='firefox'
#[[ -x "$(command -v links)" ]] && export BROWSER='links'

###---[ BASH HISTORY ]---###
HISTCONTROL=ignoredups
HISTSIZE=1000   # how many commands on active session
HISTFILESIZE=1000   # how many saved for the future

###---[ PROMPT ]---###
# ~/.bashrc_promp > get-prompted
PS0=$(get-prompted ps0)
PS1=$(get-prompted eosgoat)

###---[ SPLASH ]---### 
# ~/.bashrc_funcs > get-splashed
get-splashed

###---[ ALIAS ]---###
# ~/.bashrc_alias

###---[ FUNCS ]---###
# ~/.bashrc_funcs 


