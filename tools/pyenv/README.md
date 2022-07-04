# pyenv

`pyenv` is a tool to manage different Python versions in your system.

## Install

Go to the online documentation on GitHub on how to install `pyenv` ([link][pyenv-install]).

The following commands work most of the time for `bash` in most Linux distributions:

```bash
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
cd ~/.pyenv && src/configure && make -C src

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.profile
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.profile
echo 'eval "$(pyenv init -)"' >> ~/.profile
```

You may need to install some Python build environment packages before setting up a new Python version through `pyenv`:

* For Ubuntu:

    ```bash
    sudo apt-get update; sudo apt-get install make build-essential libssl-dev zlib1g-dev \
    libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
    libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
    ```

* For ArchLinux:

    ```bash
    pacman -S --needed base-devel openssl zlib xz tk
    ```

For other systems, access `pyenv` documentation on GitHub ([link][pyenv-build-env]).

[pyenv-install]: https://github.com/pyenv/pyenv#installation
[pyenv-build-env]: https://github.com/pyenv/pyenv/wiki#suggested-build-environment

## Set up a global Python version

Run the following to set up any version you want:

```bash
pyenv global <version>
```

If you want a different version for some specific directory, then do this:

```bash
pyenv local <version>
```

Run `pyenv install --list` to see all available versions to install.
