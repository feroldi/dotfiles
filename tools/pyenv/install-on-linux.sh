#!/bin/bash

source ../installation-util.sh

ensure_has_commands git make

git clone https://github.com/pyenv/pyenv.git ~/.pyenv
(cd ~/.pyenv && src/configure && make -C src)

printf '%s\n' 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.profile
printf '%s\n' 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.profile
printf '%s\n' 'eval "$(pyenv init -)"' >> ~/.profile

say 'you need to logout in order to make the new changes work'
