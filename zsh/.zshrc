export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="ys"

plugins=(git colored-man-pages colorize cp man command-not-found sudo ubuntu archlinux zsh-navigation-tools z extract history-substring-search python)

source $ZSH/oh-my-zsh.sh

# User configuration

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias cls='clear'
alias jo='joshuto'
alias vim='nvim'
# VPN                                                                                                                                                                                    
alias proxy='export all_proxy=http://127.0.0.1:7890'
alias unproxy='unset all_proxy'


# jenv config
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"
alias jenv_set_java_home='export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"'

# mysql环境变量
export PATH=$PATH:/usr/local/mysql-5.7.31-macos10.14-x86_64/bin

# protoc 环境变量
export PATH=$PATH:/Users/kimi/developer/protoc/bin
export PATH="/usr/local/bin:$PATH"
# gradle 变量
export PATH="/opt/homebrew/opt/gradle@7/bin:$PATH"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/kimi/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/kimi/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/kimi/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/kimi/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

