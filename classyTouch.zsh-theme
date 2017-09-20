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
local git_branch='$(git_prompt_info) $(git_prompt_status)%{$reset_color%}'

PROMPT="%(?,%{$red%}┌─╼${current_dir}%{$reset_color%} ${git_branch}
%{$red%}└────╼%{$reset_color%} ,%{$red%}┌─╼${current_dir}%{$reset_color%} ${git_branch}
%{$red%}└╼ %{$reset_color%} "

RPROMPT="%(?,%{$red%}┌─╼${current_dir}%{$reset_color%} $(git_prompt_info) ${git_branch}
%{$red%}└────╼%{$reset_color%} ,%{$red%}┌─╼${current_dir}%{$reset_color%} ${git_branch}
%{$red%}└╼ %{$reset_color%} "

# git_prompt_info
ZSH_THEME_GIT_PROMPT_PREFIX="%{$red%}╾─╼ %{$fg_bold[magenta]%}[ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[magenta]%} ]%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_DIRTY="%{$red%} ··%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$green%} ·%{$reset_color%}"

# git_prompt_status
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg_bold[green]%}+%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg_bold[red]%}x%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="*"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$magenta%}⇢%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$yellow%}═%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg_bold[cyan]%}?$reset_color%}"

# git_prompt_ahead
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE="%{$green%}⇡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE="%{$red%}⇣%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIVERGED_REMOTE="%{$yellow%}⇡⇣%{$reset_color%}"