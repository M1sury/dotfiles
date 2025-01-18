export ZSH="$HOME/.oh-my-zsh"

# Theme to load
ZSH_THEME="ys"

plugins=(
    git
    colorize
    cp
    man
    sudo
    zsh-navigation-tools
    z
    extract
    history-substring-search
    python
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-completions
)

source $ZSH/oh-my-zsh.sh

# User configuration
###################################命令别名######################################################
alias cls='clear'
alias ls='lsd'

alias o='open'
alias jo='yazi'
alias vim='nvim'
alias lg='lazygit'
alias vi='nvim'
alias jv='java -version'
alias java21='jenv global 21.0.2'

# VPN
alias proxy='export all_proxy=http://127.0.0.1:7890'
alias unproxy='unset all_proxy'
###################################命令别名######################################################


###################################环境变量######################################################
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
export PATH="/opt/homebrew/opt/gradle@6/bin:$PATH"
# flutter
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn

# fzf
export FZF_DEFAULT_OPTS=''
export FZF_COMPLETION_TRIGGER='\'

# Go-proxy
export GO111MODULE=on
export GOPROXY=https://goproxy.cn

###################################环境变量######################################################

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/kimi/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/kimi/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/kimi/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/kimi/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

