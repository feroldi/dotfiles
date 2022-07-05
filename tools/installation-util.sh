say() {
    printf '%s\n' "$0: $1" >&2
}

die() {
    say "$1"
    exit 1
}

has_command() {
    command -v $1 >/dev/null
}

ensure_has_commands() {
    for cmd in $@; do
        has_command $cmd || die "missing \`$cmd\` command"
    done
}

install_package() {
    package=$1
    if has_command pacman; then
        sudo pacman -s $package
    elif has_command apt-get; then
        sudo apt-get install $package
    else
        return 1
    fi

    return 0
}
