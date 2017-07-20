setopt prompt_subst

ZSH_THEME_GIT_PROMPT_PREFIX="on %{$fg[blue]%}git%{$reset_color%}:"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_BRANCH=""
ZSH_THEME_GIT_PROMPT_SEPARATOR=""
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[cyan]%}%{+%G%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]?%G%}"

_LUNA_PROMPT="%{%{$fg[green]%}%n%{$reset_color%} at %{$fg[yellow]%}%m%{$reset_color%} in %{$fg[red]%}%~%{$reset_color%}%}"

precmd_functions=("${precmd_update_git_vars:|precmd_functions}")
chpwd_functions=("${chpwd_update_git_vars:|chpwd_functions}")

PROMPT=$'\n'$_LUNA_PROMPT$' \n$ '
RPROMPT=''

_LUNA_PROMPT_TMP_FILE="/tmp/zsh_promptfile"
_LUNA_PROMPT_STATUS=0

function _luna_precmd () {

	function set_prompt () {
		precmd_update_git_vars

		echo -n $'\n'$_LUNA_PROMPT$' '$(git_super_status)$(virtualenv_prompt_info)> $_LUNA_PROMPT_TMP_FILE
		echo -n $' \n$ ' >> $_LUNA_PROMPT_TMP_FILE
	}

	set_prompt &!
	PROMPT=$(cat $_LUNA_PROMPT_TMP_FILE)
}


precmd_functions+=(_luna_precmd)
