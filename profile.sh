#!/bin/sh

export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export EDITOR=nvim
export VISUAL=nvim

CARGO_BIN="$HOME/.cargo/bin"
if [[ -d "$CARGO_BIN" ]]; then
    export PATH="$CARGO_BIN:$PATH"
fi

EMACS_BIN="$HOME/.emacs.d/bin"
if [[ -d "$EMACS_BIN" ]]; then
    export PATH="$EMACS_BIN:$PATH"
fi

if [[ -x "$(command -v yarn)" ]]; then
    export PATH="$(yarn bin):$PATH"
fi
if [[ -x "$(command -v python3)" ]]; then
    export PATH="$(python3 -m site --user-base)/bin:$PATH"
fi

if [[ "$OSTYPE" == "darwin"* ]]; then
    if [[ -x "$(command -v gpgconf)" ]]; then
        export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
        (gpgconf --launch gpg-agent &)
    fi
fi

