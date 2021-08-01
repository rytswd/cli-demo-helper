#!/usr/bin/env bash

# Overrides the type speed to 3000 char per min
export demo_helper_type_speed="3000"

# shellcheck source=./demo-helper.sh
source "$(dirname "$0")/demo-helper.sh"

comment "Starting demo with demo-helper..."
comment 'This demo uses faster type speed. You can configure as you like using a shell variable of `type_speed`'
execute "ls -la"

comment_r "Special characters are written as is '\\~!!@(*#@)"
comment_g "Special characters are written as is '\\~!!@(*#@)"
comment_b "Special characters are written as is '\\~!!@(*#@)"

comment "End of demo!"
