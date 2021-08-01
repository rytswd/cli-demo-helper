#!/usr/bin/env bash

# shellcheck source=./demo-helper.sh
source "$(dirname "$0")/demo-helper.sh"

comment "Starting demo with demo-helper..."
execute "ls -la"

comment_r "Special characters are written as is '\\~!!@(*#@)"
comment_g "Special characters are written as is '\\~!!@(*#@)"
comment_b "Special characters are written as is '\\~!!@(*#@)"
execute "ls -la"

comment "End of demo!"
