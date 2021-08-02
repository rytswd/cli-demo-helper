#!/usr/bin/env bash

# shellcheck source=./demo-helper.sh
source "$(dirname "$0")/demo-helper.sh"

comment_g "Starting demo with demo-helper..."

comment "Get list of files"
execute "ls -l"

comment "Check out example code"
execute "cat example-simple.sh"

clear_terminal
comment "You can also run some command without using any function"
ls # NOTE: this breaks the prompt setup if it writes to stdout

comment ""

comment "End of demo!"
