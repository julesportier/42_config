##########
# SOURCE #
##########
#source ~/.profile

########
# PATH #
########
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

##########
# CDPATH #
##########
export CDPATH=$HOME
# For my computer
export CDPATH=$CDPATH:$HOME/Repositories:$HOME/Repositories/projets_42
export CDPATH=$CDPATH:$HOME/Music
# For 42
export CDPATH=$CDPATH:$HOME/Documents

##########
# PROMPT #
##########
# Set up the prompt with static repo infos
autoload -Uz vcs_info # enable vcs_info
zstyle ':vcs_info:*' enable git # to just enable git backend ($ vcs_info_printsys)
zstyle ':vcs_info:git*' formats '[ %r(%b)]' # format vcs_info output

setopt prompt_subst

precmd () { # always load before displaying the prompt

	vcs_info; # set vcs_info_msg_0_

	# if in repo add a new line in the prompt for bettter readability
	if [[ -n $vcs_info_msg_0_ ]]; then
		PS1='%F{green}%B%n@%m%f:%F{blue}%~%b%f$vcs_info_msg_0_
%% '
	else
		PS1='%F{green}%B%n@%m%f:%F{blue}%~%b%f%% '
	fi

}

###########
# HISTORY #
###########
setopt histignorealldups sharehistory

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

##############
# COMPLETION #
##############
# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# To allow the use of ^ and ~ operators (among many other things)
setopt extended_glob

###############
# INTERACTION #
###############
# Use emacs keybindings
bindkey -e
# Set escape key latency
# KEYTIMEOUT=5

###########
# ALIASES #
###########
# output color
alias ls='ls --color=auto'
alias la='ls -a --color=auto'
alias ll='ls -l --color=auto'
alias lla='ls -la --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
export MANPAGER='less -R --use-color -Dd+g -Du+c'
alias van='man --pager="nvim +Man!"'

# git aliases
# 	status
alias gs='git status --untracked-files=all'
alias gss='git status --short'
alias gsv='git status --untracked-files=all -vv'
#	log & diff
alias gl='git log'
alias glo='git log --oneline'
alias glp='git log --patch'
alias gd='git diff --submodule=log'
alias gdd='git diff --submodule=diff'
alias gdc='git diff --submodule=log --compact-summary'
#	branches
alias gx='git switch'
alias gxc='git switch --create'
alias gb='git branch'
alias gbv='git branch -vv'
#	add & commit
alias ga='git add'
alias gap='git add --patch'
alias gc='git commit -v'
alias gca='git commit --amend -v'

# c aliases
alias grind='valgrind --leak-check=full --show-leak-kinds=all --track-fds=yes --trace-children=yes'
alias norm='watch -n 1 norminette'

# 42
#	default's cc flags
alias ccw='cc -Wall -Wextra -Werror'
#	minilibx
MLXDIR='/home/juportie/Documents/minilibx'
manmlx() {
	man "$MLXDIR/man/man3/$1.3" 2>/dev/null \
	|| ls "$MLXDIR/man/man3/" | tr -d .3
}
