# ZSH Theme - classyTouch
# Author: Yaris Alex Gutierrez <yarisgutierrez@gmail.com>
# Prompt is the Oh-my-zsh version of user Graawr's 'Classy Touch' themes on http://dotshare.it

export VIRTUAL_ENV_DISABLE_PROMPT=1

function virtualenv_info(){
    if [ -n "$VIRTUAL_ENV" ]; then
        echo "(%{$FG[006]%}${VIRTUAL_ENV##*/}%{$FG[109]%})─"
    else
        echo ''
    fi
}

local current_dir='%{$FG[109]%}[%{$FG[002]%}%2~%{$FG[109]%}]'
local git_branch='$(git_prompt_info)'
local venv="\$(virtualenv_info)"
_lineup=$'\e[1A'
_linedown=$'\e[1B'
local time_d="%D{%H:%M}"

PROMPT="%{$FG[109]%}┌${venv}${current_dir}${git_branch}
%{$FG[109]%}└─╼%{$reset_color%} "
RPROMPT="%{${_lineup}%}${FG[240]}╾[${time_d}]─[%n@%m]╼%{${_linedown}%}%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[109]%}─[%{$FG[011]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$FG[109]%}]"
