# pyenv

`pyenv` is a tool to manage different Python versions in your system.

## Install

Go to the online documentation on GitHub on how to install `pyenv` ([link][pyenv-install]), or run the following command to automatically download and install it:

```bash
./install-on-linux.sh
```

It works most of the time for `bash` in most Linux distributions.

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

Run the following to globally set up some version for your system:

```bash
pyenv global <version>
```

If you want a different version for some specific directory, then `cd` into its path, and run this:

```bash
pyenv local <version>
```

Run `pyenv install --list` to see all available versions to install.
