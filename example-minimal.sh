#!/usr/bin/env bash

# shellcheck source=./demo-helper.sh
source "$(dirname "$0")/demo-helper.sh"

comment "Starting demo with demo-helper..."
execute "ls -la"

comment_r "Special characters are written as is, such as '\\~!!@(*#@)"
comment_g "It is simple to use, you just need to source the helper script."
comment_b "No extra tool needed."

comment "End of demo!"
