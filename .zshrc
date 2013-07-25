# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
#ZSH_THEME="random"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias mvim="mvim --remote-tab-silent"
alias smvim="~/bin/mvim"
alias tmux="tmux -u"
#alias vim="vim --remote-silent || vim"

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
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(git github osx rvm terminalapp lein)
plugins=(git github osx zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#export PATH=/Users/daniel/code/scala/scala-2.8.2.final/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:~/bin:/opt/ruby/1.8/bin:/opt/nginx/sbin/:/opt/mysql/bin:/usr/local/sbin:/Users/daniel/.rvm/gems/ruby-1.9.3-p0/bin:/Users/daniel/.rvm/gems/ruby-1.9.3-p0@global/bin:/Users/daniel/.rvm/rubies/ruby-1.9.3-p0/bin:/Users/daniel/.rvm/bin
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:~/bin:/opt/ruby/1.8/bin:/opt/nginx/sbin:/opt/mysql/bin:/usr/local/sbin:/usr/local/share/npm/bin:/usr/local/Cellar/ruby/1.9.3-p362/bin


export RLWRAP_HOME="$HOME/.rlwrap"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Add sml to path
export PATH="/usr/local/Cellar/smlnj/110.75/libexec/bin:$PATH"
