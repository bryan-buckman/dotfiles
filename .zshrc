# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="xiong-chiamiov-plus"
ZSH_THEME="agnoster"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git iterm2 brew repo sudo knife vagrant bundler web-search zoxide)

source $ZSH/oh-my-zsh.sh

# Put any proprietary or private functions/values in ~/.private, and this will source them
if [ -f $HOME/.private ]; then
  source $HOME/.private
fi

#Read aliases from ~/.aliases
if [ -f $HOME//.aliases ]; then
	source $HOME/.aliases
fi

#Read aliases from ~/.bash_aliases
if [ -f $HOME//.bash_aliases ]; then
	source $HOME/.bash_aliases
fi

if [ -f $HOME//.bash_functions ]; then
	source $HOME/.bash_functions
fi

#Read kubectl aliases from ~/.kubernetes-aliases
if [ -f $HOME//.kubernetes-aliases ]; then
	        source $HOME/.kubernetes-aliases
fi

if [ -f $HOME/.profile ]; then
  source $HOME/.profile  # Read Mac .profile, if present.
fi
#Run every script in $HOME/.bash.d
if [ -d $HOME//.bash.d/ ]; then
	for i in $HOME/.bash.d/*.sh;
		do;
		if [ -r ${i} ] ; then
			. ${i}
		fi
		done;
fi
#Substitute fzf for ctrl-R
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh