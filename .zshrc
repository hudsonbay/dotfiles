# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(asdf git zsh-syntax-highlighting zsh-autosuggestions zsh-interactive-cd mix)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
export BROWSER="/usr/bin/brave"
. /opt/asdf-vm/asdf.sh


export PATH=$PATH:~/.bin
export GIT_EDITOR=nvim

# fly.io
export FLYCTL_INSTALL="/home/hudsonbay/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

#
# ALIASES
#

#alias docker=podman
#alias docker-compose=podman-compose
alias k2folder=/home/hudsonbay/workspace/kay-two/

alias copy="xclip -selection clipboard"

#
# FUNCTIONS
#

function downgrade_docker() {
sudo pacman -U /var/cache/pacman/pkg/docker-1:20.10.22-1-x86_64.pkg.tar.zst /var/cache/pacman/pkg/docker-compose-2.14.2-1-x86_64.pkg.tar.zst
}

function k2web(){
docker exec -it kay-two-kay_two-1 sh
}

function k2pg() {
docker exec -it kay-two-postgres-1 sh -c "psql -U kay_two -W kay_two"
}

function k2(){
k2folder && code .
}

function k2bak(){
cd /home/hudsonbay/workspace/kay-two-bak/ && code .
}

function cleark2(){
k2folder && sudo rm -rf _build
}

function reload(){
source ~/.zshrc
}

function cleark2screenshots(){
cd /home/hudsonbay/workspace/kay-two/ && sudo rm -rf apps/admin/screenshots && sudo rm -rf screenshots/ && sudo rm -rf apps/api/screenshots && sudo rm -rf apps/kay_two/screenshots
}

function chslaptop(){
xrandr --output eDP1 --primary --mode 1920x1200 --pos 0x0 --rotate normal --output DP1 --off --output DP2 --off --output DP3 --off --output DP4 --off --output HDMI1 --off --output HDMI2 --off --output HDMI3 --off --output VIRTUAL1 --off
}

function chsside(){
xrandr --output eDP1 --primary --mode 1920x1200 --pos 0x0 --rotate normal --output DP1 --off --output DP2 --off --output DP3 --off --output DP4 --off --output HDMI1 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI2 --off --output HDMI3 --off --output VIRTUAL1 --off
}

function chsvertical(){
xrandr --output eDP1 --primary --mode 1920x1200 --pos 0x1080 --rotate normal --output DP1 --off --output DP2 --off --output DP3 --off --output DP4 --off --output HDMI1 --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI2 --off --output HDMI3 --off --output VIRTUAL1 --off
}
