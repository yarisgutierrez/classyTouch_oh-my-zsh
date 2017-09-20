# ZSH Theme - classyTouch
# Author: Yaris Alex Gutierrez <yarisgutierrez@gmail.com>
# Prompt is the Oh-my-zsh version of user Graawr's 'Classy Touch' themes on http://dotshare.it


eval red=$fg[red]
eval green=$fg[green]
eval yellow=$fg[yellow]
eval blue=$fg[blue]
eval magenta=$fg[magenta]
eval cyan=$fg[cyan]
eval white=$fg[white]
eval grey=$fg[grey]

local current_dir='%{$fg[red]%}[%{$reset_color%}%~% %{$fg[red]%}]%{$reset_color%}'
local git_branch='$(git_prompt_info)%{$reset_color%}'


#PROMPT="%(?,%{$fg[red]%}┌─╼${current_dir}%{$reset_color%} ${git_branch}
#%{$fg[red]%}└────╼%{$reset_color%} ,%{$fg[red]%}┌─╼${current_dir}%{$reset_color%} ${git_branch}
#%{$fg[red]%}└╼ %{$reset_color%} "
PROMPT="%(?,%{$red%}┌─╼${current_dir}%{$reset_color%} ${git_branch}
%{$red%}└────╼%{$reset_color%} ,%{$red%}┌─╼${current_dir}%{$reset_color%} ${git_branch}
%{$red%}└╼ %{$reset_color%}$(git_prompt_info)$(git_prompt_status)$(git_remote_status) "

GIT_PROMPT="%(?,%{$red%}┌─╼${current_dir}%{$reset_colors%} ${git_branch}
%{$red%}└────╼%{$reset_color%} ,%{$red%}┌─╼${current_dir}%{$reset_color%} ${git_branch}
%{$red%}└╼ %{$reset_color%}$(git_prompt_info)$(git_prompt_status)$(git_remote_status) "

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}╾─╼%{$reset_color%} %{$fg_bold[magenta]%}[%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[magenta]%}]"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$red%} ⨯ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$green%} ⧳ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE="%{$green%}⇡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE="%{$red%}⇣%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIVERGED_REMOTE="%{$yellow%}⬌%{$reset_color%}"