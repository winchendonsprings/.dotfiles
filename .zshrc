# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"

ZSH_THEME="../../.dotfiles/simple-ry"
#if [[ "$HOST" == "g62x" ]]; then	 
    #ZSH_THEME="../../.dotfiles/simple-lap"						#laptop
#elif [[ "$HOST" == "devbox" ]]; then
    #ZSH_THEME="../../.dotfiles/simple-dev"						#laptop
#elif [[ "$HOST" == "precise32" ]]; then
    #ZSH_THEME="../../.dotfiles/simple-dev"						#laptop
#elif [[ "$HOST" == "debian" ]]; then
    #ZSH_THEME="../../.dotfiles/simple-desk"						#laptop
#fi

#alias startx='ssh-agent startx'

alias ohmyzsh='vim ~/.oh-my-zsh'
alias zshconfig='vim ~/.zshrc'
alias i3config='vim ~/.dotfiles/config-i3'
alias vimconfig='vim ~/.vimrc'
alias tmuxconfig='vim ~/.tmux.conf'
alias p='pwd'
alias rm='rm -i'
alias ag='ag --smart-case' #case insensitive unless a caps is used
alias note='vim /home/ry/Dropbox/note.txt'
alias art='cat /home/ry/.art'
alias clock='tty-clock -c -C 7 -f "%^a %^b %d %Y"'
alias clock2='watch --no-title -n 1 date +"%H:%M:%S_%A_%B_%d_%Y"'
alias battery='watch --no-title -n 1 acpi'
alias dropbox-status='watch -n 1 --no-title dropbox status'
alias ack='ack-grep --ignore-case'
alias bitlbee-on='bitlbee -c /home/ry/.bitlbee/bitlbee.conf -d /home/ry/.bitlbee'
#alias colors='./.dotfiles/colortest.sh -w'
alias upgrade='sudo git-extras update && vundle-update && upgrade_oh_my_zsh && sudo apt-get update && sudo apt-get upgrade && sudo apt-get clean'
alias offlineimap-bl='offlineimap -u blinkenlights'
alias weather='sh ~/Documents/weatherpdx.sh'
alias music='mpg123 --title --control'
alias sudo aptitude='nocorrect sudo aptitude'
alias aptitude='nocorrect aptitude'
alias sudo='nocorrect sudo'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../../'
alias k9='kill -9'
alias k15='kill -15'
alias watch='watch --no-title'
#alias freq='cut -f1 -d" " ~/.bash_history | sort | uniq -c | sort -nr | head -n 30' #show frequntly used commands
alias freq='cut -f1 -d" " ~/.zsh_history | sort | uniq -c | sort -nr | head -n 30' #show frequntly used commands
alias l='ls -lah' #show only folders
alias lf='ls -Gl | grep ^d' #Only list directories
alias lsd='ls -Gal | grep ^d' #Only list directories, including hidden ones
#alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'''  #recursively list all of the files in a directory - tree does this better
alias la='ls -lAFh'   #long list,show almost all,show type,human readable
alias lt='ls -ltFh'   #long list,sorted by date,show type,human readable
#alias lr='ls -tRFh'   #sorted by date,recursive,show type,human readable
alias lr='ls -trlaFh'   #sorted by date,reverse,show type,human readable
alias mailsync='sh /home/ry/Documents/mailsync.sh'
alias archivemail-ry='sh /home/ry/Documents/archivemail-ry.sh'
alias mplayer-invert='mplayer -vf eq2=1:-1'
alias suspend='sudo pm-suspend && i3lock -c 000000'
alias hibernate='sudo pm-hibernate && i3lock -c 000000'
alias listvms='echo "----------ALL VIRTUAL MACHINES----------" && VBoxManage list vms && echo "----------RUNNING VIRTUAL MACHINES----------" && VBoxManage list runningvms'
alias nmcli='nmcli -m multiline -f all'
memcpu() { echo "*** Top 10 cpu eating process ***"; ps auxf | sort -nr -k 3 | head -10;
    echo  "*** Top 10 memory eating process ***"; ps auxf | sort -nr -k 4 | head -10;  }
#pretty git logs
#alias git l="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
#alias git lg="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
#alias git gg="git log --graph --full-history --all --color --pretty=format:'%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s'"

#alias tmux='tmux -2' 	#for 256 color
export TERM=screen-256color
#export TERM=screen-16color 	#for 16 color


# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
#DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
 DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
 COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
    git
    git-extras
    gitfast
    colored-man
    colorize
    composer
    command-not-found
    extract
    fasd
    gem
    history
    history-substring-search
    rsync
    ssh-agent
    vagrant
    vi-mode
    vundle
    dirhistory
    frontend-search
    k
    ubuntu
)
#autojump
#common-aliases
#debian

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
DEFAULT_USER='ry'

# this will display the pwd in TMUX prompt
PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'

# display art in new shells
#cat .art

# RYAN RYAN RYAN RYAN RYAN
# base 16 shell
#source $HOME/.dotfiles/base16-default.dark-shell.sh

# set default editor
export EDITOR='vim'

# share history between terminals
setopt SHARE_HISTORY

# set default terminal-emulator
#export TERMINAl='/usr/bin/urxvt'

# set zsh mode to vi
#set -o vi
bindkey -v

# mode vim mode style from http://dougblack.io/words/zsh-vi-mode.html
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

#This is in the theme now
#    function zle-line-init zle-keymap-select {
#    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
#    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
#    zle reset-prompt
#    }
#    
#    zle -N zle-line-init
#    zle -N zle-keymap-select

# removes the lag between swithing from command to insertmode in vi-mode
export	KEYTIMEOUT=1

# fasd https://github.com/clvv/fasd
#eval "$(fasd --init auto zsh-hook zsh-ccomp-install zsh-wcomp-install)"
eval "$(fasd --init auto zsh-hook zsh-ccomp zsh-wcomp)"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
#eval `keychain --eval id_rsa --clear`

# until k is available in ohmyzsh
#source /home/ry/.k/k.sh
