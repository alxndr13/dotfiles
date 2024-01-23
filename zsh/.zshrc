autoload -Uz compinit
day_of_year=$(stat -c %Y $HOME/.zcompdump | xargs -I {} date -d @{} +%j)
if [ $(date +'%j') != $day_of_year ]; then
  compinit
else
  compinit -C
fi

source '/usr/share/zsh-antidote/antidote.zsh'

antidote load

export PATH=$PATH:/home/hucka/go/bin
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

export FPATH=$FPATH:/home/hucka/.zsh_autoload/

# Shift Tab to accept autosuggestion
bindkey '^[[Z' autosuggest-accept
# CTRL+ arrow keys for word
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[." insert-last-word
bindkey '^Q' push-line

unsetopt flow_control



# History Settings
HISTFILE=$HOME/.zsh_history
HISTSIZE=500000
SAVEHIST=500000
setopt appendhistory
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

export EDITOR="nvim"
export PATH=$PATH:/home/hucka/go/bin

# Aliases
alias ll='eza --icons -l --time-style relative --git -snew'
alias dive="dive --source=podman"
alias vi='nvim'
alias vim='nvim'
alias k='kubectl'
alias kx='kubectx'
alias kns='kubens'
alias cat='bat -pp'
alias note='vim ~/notes.txt'
alias td="todo.sh"
alias pass='gopass'
alias backup='~/Dokumente/backup.sh'
alias wgup='sudo systemctl start wg-quick@client'
alias wgdown='sudo systemctl down wg-quick@client'
alias hidrive='sshfs hucka@sftp.hidrive.strato.com:/users/hucka/ /home/hucka/hidrive_mount'
alias uhidrive='umount /home/hucka/hidrive_mount'
# https://unix.stackexchange.com/a/148548
alias sudo='sudo '
alias pd='podman'
alias tf='terraform'
alias lz='lazygit'
alias bton='bluetoothctl power on'
alias btoff='bluetoothctl power off'
alias btbose='bluetoothctl connect 60:AB:D2:41:CD:11'
alias btk6='bluetoothctl connect DC:2C:26:2A:3E:00'
alias n='nnn'
alias cal='cal -w -n 3 -m'
alias kt='kitty --detach'

alias d="cd /home/hucka/Dokumente/nvim_zettelkasten/ && nvim /home/hucka/Dokumente/nvim_zettelkasten/$(date "+%Y-%m-%d").md; cd -"

# Backup Aliases
autoload dobackup
autoload backuplist

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
__git_files () {
    _wanted files expl 'local files' _files
}

# Shift Tab to accept autosuggestion
bindkey '^[[Z' autosuggest-accept
# CTRL+ arrow keys for word
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[." insert-last-word

## direnv
_evalcache direnv hook zsh
## zoxide
_evalcache zoxide init zsh

_evalcache starship init zsh
