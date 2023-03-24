eval $(/opt/homebrew/bin/brew shellenv)

export EDITOR=/opt/homebrew/bin/nvim

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


export TIMESPREAD_CMS_NODE_ENV=development

source "$HOME/.cargo/env"

# opam configuration
[[ ! -r /Users/seongjin/.opam/opam-init/init.zsh ]] || source /Users/seongjin/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

