die() {
    printf '%s\n' "$0: $1"
    exit 1
}

say() {
    printf '%s\n' "$0: $1"
}

has_command() {
    command -v $1 >/dev/null
}

ensure_has_commands() {
    for cmd in $@; do
        has_command $cmd || die "missing \`$cmd\` command"
    done
}
