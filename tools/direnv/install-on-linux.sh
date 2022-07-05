#!/bin/bash

source ../installation-util.sh

has_command direnv && {
    say 'direnv is already installed'
    exit 0
}

if ! install_package direnv; then
    direnv_url=https://direnv.net/install.sh
    curl -sfL $direnv_url | bin_path=~/.local/bin bash
fi

printf '%s\n' 'eval "$(direnv hook bash)"' >> ~/.bashrc

say 'you need to reload your shell in order to make the new changes work'
say 'to reload, run `exec $SHELL`'
