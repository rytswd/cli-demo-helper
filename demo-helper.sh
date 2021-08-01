#!/usr/bin/env bash

###---- ⬇️ HOW TO USE ⬇️ ---------------------------------------------------###
#
#
#
#
#

###---- ⬇️ SETUP ⬇️ --------------------------------------------------------###

# Colour setup
__reset=$(tput sgr0)
__red=$(
    tput bold
    tput setaf 1
)
__green=$(
    tput bold
    tput setaf 2
)
__blue=$(
    tput bold
    tput setaf 6
)
__yellow=$(
    tput bold
    tput setaf 3
)
readonly reset=$__reset
readonly red=$__red
readonly green=$__green
readonly blue=$__blue
readonly yellow=$__yellow

# Speed
type_speed=${type_speed:="1200"} # In characters per min notation
interval="100"                   # In ms

# Prompt
prompt=${prompt:="$yellow$ $reset"}

###---- ⬇️ EXTRA CONFIGURATION ⬇️ ------------------------------------------###

# TBD

###---- ⬇️ Internal Prep ⬇️ ------------------------------------------------###
sleep_duration=$(echo "scale=2 ; 60 / $type_speed" | bc)

# type_out imitates typing out the provided string
function type_out() {
    s=$*
    while [ ${#s} -gt 0 ]; do
        printf '%.1s' "$s"
        s=${s#?}
        sleep "$sleep_duration"
    done
}

# write_prompt writes PS1 like prompt
function write_prompt() {
    echo -n "$prompt"
}

###---- ⬇️ MAIN FUNCTIONS ⬇️ -----------------------------------------------###
function clear_terminal() {
    clear
}

# comment writes hash and then any content as comment
function comment() {
    echo -n "$blue# "
    type_out "$*"
    echo " $reset"
    write_prompt
    read -rs
}
# comment_r writes comment in red
function comment_r() {
    echo -n "$red# "
    type_out "$*"
    echo " $reset"
    write_prompt
    read -rs
}
# comment_g writes comment in green
function comment_g() {
    echo -n "$green# "
    type_out "$*"
    echo " $reset"
    write_prompt
    read -rs
}
# comment_b writes comment in blue
function comment_b() {
    echo -n "$blue# "
    type_out "$*"
    echo " $reset"
    write_prompt
    read -rs
}

function execute() {
    type_out "$*"
    read -rs
    echo

    eval "$*"
    r=$?

    echo
    write_prompt
    read -rs
    return $r
}

# Ensure the process starts with some prompt
write_prompt

trap "echo" EXIT
