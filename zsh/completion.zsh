# Load zsh/complist first
zmodload -i zsh/complist

# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

# Initialize completion system if not already done by Prezto
if ! whence compdef >/dev/null; then
  autoload -Uz compinit
  compinit -i
fi
