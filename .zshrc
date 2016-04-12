# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"
DEFAULT_USER="schwenk"

# Comment this line to disable autoupdates.
DISABLE_UPDATE_PROMPT=true

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(gitfast colorize pip python brew osx
		jsontools autopep8 aws common-aliases zsh-syntax-highlighting
	    vi-mode web-search wd sudo)

# User configuration

source $ZSH/oh-my-zsh.sh
source $HOME/.access_tokes.sh
source $HOME/.aliases.sh
source /usr/local/etc/grc.bashrc

export SPARK_HOME=/Users/schwenk/wrk/ds_utils/spark-1.4.1-bin-hadoop2.4
export PYTHONPATH=/Users/schwenk/wrk/ds_utils/spark-1.4.1-bin-hadoop2.4/python/:$PYTHONPATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/texbin:/usr/local/sbin:$SPARK_HOME/bin"
# export MANPATH="/usr/local/man:$MANPATH"
export SPARK_HOME=/Users/schwenk/wrk/ds_utils/spark-1.4.1-bin-hadoop2.4
export PYTHONPATH=/Users/schwenk/wrk/ds_utils/spark-1.4.1-bin-hadoop2.4/python/:$PYTHONPATH

export MTURK_CMD_HOME=/Users/schwenk/wrk/ds_utils/aws-mturk-clt-1.3.1/
#export JAVA_HOME=/usr/libexec/java_home
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd notify
bindkey -v

#Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
 fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

export TERM=xterm-256color
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;47;34m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
export LESS=-r

#start of bindings
bindkey "^[D" backward-word
bindkey "^[C" forward-word
bindkey "^[a" beginning-of-line
bindkey "^[e" end-of-line

#test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
