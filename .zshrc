# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="simple"

# Example aliases
#alias zshconfig="mate ~/.zshrc"
#alias ohmyzsh="mate ~/.oh-my-zsh"
######alias tmux='tmux -2' #for 256 color
export TERM=screen-256color
#alias cl='clear'
alias p='pwd'
alias art='cat /home/ry/.art'
alias clock='tty-clock -s'
alias ack='ack-grep'
alias upgrade='sudo git extras update && vundle-update && upgrade_oh_my_zsh && sudo apt-get update && sudo apt-get upgrade && sudo apt-get clean'
#alias update='sudo aptitude update && sudo aptitude full-upgrade'
#alias upgrade='sudo aptitude full-upgrade'
alias offlineimap bl='offlineimap -u blinkenlights'
#alias offlineimap ='offlineimap -u ttyui'
alias weather='sh ~/Documents/weatherpdx.sh'
alias sudo aptitude='nocorrect sudo aptitude'
alias aptitude='nocorrect aptitude'
alias sudo='nocorrect sudo'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../../'
alias k9='kill -9'
#show frequntly used commands
alias freq='cut -f1 -d" " ~/.bash_history | sort | uniq -c | sort -nr | head -n 30'
#show only folders
alias l='ls -lah'
alias lf='ls -Gl | grep ^d' #Only list directories
alias lsd='ls -Gal | grep ^d' #Only list directories, including hidden ones
#alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'''  #recursively list all of the files in a directory - tree does this better
alias la='ls -lAFh'   #long list,show almost all,show type,human readable
alias lt='ls -ltFh'   #long list,sorted by date,show type,human readable
#alias lr='ls -tRFh'   #sorted by date,recursive,show type,human readable
alias lr='ls -trlaFh'   #sorted by date,reverse,show type,human readable
#pretty git logs
#alias gitl="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
#alias gil="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
#alias lg="git log --graph --full-history --all --color --pretty=format:'%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s'"


# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
#DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-extras autojump command-not-found debian extract vundle)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
DEFAULT_USER='ry'

# this will display the pwd in TMUX
PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'

#cat .art
