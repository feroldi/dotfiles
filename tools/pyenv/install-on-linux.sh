#!/bin/bash

source ../installation-util.sh

has_command pyenv && {
    say 'pyenv is already installed'
    exit 0
}

# FIXME(feroldi): I'm not sure which path the package gets installed
# into. We need to know that in order to set PYENV_ROOT.
if ! install_package pyenv; then
    ensure_has_commands git make

    git clone https://github.com/pyenv/pyenv.git ~/.pyenv
    (cd ~/.pyenv && src/configure && make -C src)

    printf '%s\n' 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.profile
    printf '%s\n' 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.profile
fi

printf '%s\n' 'eval "$(pyenv init -)"' >> ~/.profile

say 'you need to logout in order to make the new changes work'
