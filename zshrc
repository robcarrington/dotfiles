export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# Path to your oh-my-zsh installation.
# export TERM="xterm-256color"
export HISTFILE=$HOME/.zhistory
export HISTSIZE=1000
export SAVEHIST=1000
export PAGER='less'
bindkey -v
export DISPLAY
export DIRSTACKSIZE=10
export EDITOR='vim'

# plugins
plugins=(git git-flow pip python tmux jsontools vi-mode)

# environmental/shell 
unsetopt ALL_EXPORT
setopt   APPEND_HISTORY
setopt   AUTOCD
setopt   AUTOLIST
setopt   AUTOMENU
unsetopt AUTOPARAMSLASH
setopt   AUTOPUSHD
setopt   AUTORESUME
unsetopt BG_NICE           # do NOT nice bg commands
unsetopt BGNICE
unsetopt CD_ABLE_VARS
setopt   CORRECT
# setopt   CORRECTALL
setopt   EXTENDEDGLOB
setopt   EXTENDED_HISTORY  # puts timestamps in the history
setopt   GLOBDOTS
setopt   HISTIGNOREDUPS
setopt   LONGLISTJOBS
unsetopt MENUCOMPLETE
setopt   MAILWARNING
setopt   NOCDABLEVARS
setopt   NOTIFY
setopt   PUSHDTOHOME
setopt   PUSHDMINUS
setopt   PUSHDSILENT
setopt   RCQUOTES
unsetopt REC_EXACT
setopt   INC_APPEND_HISTORY
setopt   SHARE_HISTORY

autoload -U compinit promptinit zcalc zsh-mime-setup
compinit
promptinit
zsh-mime-setup

# export SHELL='/usr/bin/zsh'
export KEYTIMEOUT=1
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh
export ZSH_TMUX_AUTOSTART=true
ZSH_THEME="powerlevel9k/powerlevel9k"
source $ZSH/oh-my-zsh.sh

# Powerlevel9K Customizations

POWERLEVEL9K_CUSTOM_NEWLINE="print '$(left_prompt_end)\n '"
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(time context dir vcs custom_newline anaconda)

DISABLE_AUTO_TITLE="true"

POWERLEVEL9K_VCS_GIT_ICON=''
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="012"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="black"
POWERLEVEL9K_DIR_HOME_BACKGROUND="red"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="red"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="red"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="black"
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=4

# pip
# export PIP_REQUIRE_VIRTUALENV=true
export PIP_DOWNLOAD_CACHE=/Users/rcarrington/.pip/cache
syspip(){
   PIP_REQUIRE_VIRTUALENV="" pip "$\@"
}

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

export BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# zsh and iterm2 itegration scripts
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

