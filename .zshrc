# Path to your oh-my-zsh installation.
export ZSH=/Users/daniel/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="spaceship"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export NVM_DIR="/Users/daniel/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# added by me
# export default editor
export EDITOR=mvim
export GPG_TTY=`tty`

export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export GOSRC=$GOPATH/src
export GOPKG=$GOPATH/pkg
export PATH=$PATH:$GOBIN
# export LC_CTYPE=C
# export LANG=C

# git
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias gco='git checkout '

# axs app
alias axsapi="rsync -avz --exclude-from ~/ignore-config/.rsyncignore ~/projects/vinco/axs/axs-api/. amazon:/home/ubuntu/sites/axs/api"
alias axsapip="rsync -avz --exclude-from ~/ignore-config/.rsyncignore ~/projects/vinco/axs/axs-api/. axsapi:/var/www/vhosts/api.axsweb.io/public"
alias axsfront="rsync -avz --exclude-from ~/ignore-config/.rsyncignore ~/projects/vinco/axs/axs-front/dist/. amazon:/home/ubuntu/sites/axs/front"
alias axsfrontp="rsync -avz --exclude-from ~/ignore-config/.rsyncignore ~/projects/vinco/axs/axs-front/dist/. axsfront:/var/www/vhosts/axsweb.io/public"

alias marketapi="rsync -avz --exclude-from ~/ignore-config/.rsyncignore ~/projects/vinco/inspira/market-api/. amazon:/home/ubuntu/sites/inspira-market-api/"
alias marketfront="rsync -avz --exclude-from ~/ignore-config/.rsyncignore ~/projects/vinco/inspira/market-front/dist/. amazon:/home/ubuntu/sites/inspira-market-front/"

alias dofront="rsync -avz --exclude-from ~/ignore-config/.rsyncignore ~/projects/sites/daniel-ortega/daniel-ortega-front/. do:/root/sites/prueba"

alias cap_api="rsync -avz --exclude-from ~/ignore-config/.rsyncignore ~/projects/vinco/inspira/inspira-api/. cap:/media/preloaded/api.redaula.com/public"
alias cap_app="rsync -avz --exclude-from ~/ignore-config/.rsyncignore ~/projects/vinco/inspira/inspira-app/. cap:/media/preloaded/redaula.com/public"

alias creator_front="rsync -avz --exclude-from ~/ignore-config/.rsyncignore ~/projects/vinco/inspira/creator-app/dist/. amazon:/home/ubuntu/sites/creator"

alias cuco_api="rsync -avz --progress --exclude-from ~/ignore-config/.rsyncignore ~/projects/github.com/vinco/cuco/cuco-api/. amazon:/home/ubuntu/sites/cuco/cuco-api"
alias cuco_front="rsync -avz --progress --exclude-from ~/ignore-config/.rsyncignore ~/projects/github.com/vinco/cuco/cuco-front/dist/* amazon:/home/ubuntu/sites/cuco/cuco-front/."
###-tns-completion-start-###
if [ -f /Users/daniel/.tnsrc ]; then
    source /Users/daniel/.tnsrc
fi
###-tns-completion-end-###
export PATH=$PATH:~/npm/bin
export NODE_PATH=:/home/daniel/npm/lib/node_modules
export MYVIMRC=~/.vimrc
alias vime='vim $MYVIMRC'
