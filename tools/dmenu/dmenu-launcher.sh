#!/bin/sh

dmenu_path | dmenu -fn "Ubuntu Mono-15" -p 'exec' -sb '#D8AD4C' -sf '#0A0A0A' -nb '#0A0A0A' -b | ${SHELL:-"/bin/sh"} &
