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
alias statsd="node ~/code/bins/statsd/stats.js"
alias mvim="mvim --remote-tab-silent"
alias smvim="~/bin/mvim"
alias tmux="tmux -u"
alias h="heroku"
alias sbt_scala="g8 file:///Users/daniel/code/scala/scala-sbt.g8"
#alias sbt_scalatra="g8 scalatra/scalatra-sbt"
alias sbt_scalatra="g8 file:///Users/daniel/code/scala/scalatra-sbt.g8"
alias sbt_akka="g8 typesafehub/akka-scala-sbt"
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
plugins=(git github osx zsh-syntax-highlighting scala sbt)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:~/bin:/usr/local/sbin:/usr/local/share/npm/bin:/usr/local/opt/ruby193/bin

export RLWRAP_HOME="$HOME/.rlwrap"

export NARC='ec2-user@ec2-50-17-102-69.compute-1.amazonaws.com'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Add sml to path
export PATH="/usr/local/Cellar/smlnj/110.75/libexec/bin:$PATH"

### Add ec2-tools to path
export PATH="/Users/daniel/bin/ec2-api-tools-1.6.6.4/bin:$PATH"


export EC2_HOME="/Users/daniel/bin/ec2-api-tools-1.6.6.4"

export JAVA_HOME=$(/usr/libexec/java_home)
export SBT_OPTS="-XX:MaxPermSize=256m"

export EC2_PRIVATE_KEY="~/.ssh/pk-N6TCIKXNUO2FIJN5LKBPNDJTHHEBY6DT.pem"
export EC2_CERT="~/.ssh/cert-N6TCIKXNUO2FIJN5LKBPNDJTHHEBY6DT.pem"

export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH

PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'

# eval `opam config -env`
# OPAM configuration
. /Users/daniel/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

#eval `opam config -env`
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
