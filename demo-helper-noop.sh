#!/usr/bin/env bash

# 📌 Original file at:
#    https://github.com/rytswd/cli-demo-helper

###---- ⬇️ HOW TO USE ⬇️ ---------------------------------------------------###
#
#  Simply source this file to import functions, and use them like:
#
#      comment "This is a comment! About to start command..."
#      execute "ls -la"
#
#  ⚠️ IMPORTANT
#  This "noop" script is only to provide the same interface, but it actually
#  does not mimick the typing effect, and simply ignore any comments and
#  execute commands without any prompt.
#

###---- ⬇️ MAIN FUNCTIONS ⬇️ -----------------------------------------------###
function clear_terminal() {
    clear
    write_prompt
}

function comment() {
    # Noop, simply ignore the provided comment.
    true
}
function comment_r() {
    # Noop, simply ignore the provided comment.
    true
}
function comment_g() {
    # Noop, simply ignore the provided comment.
    true
}
function comment_b() {
    # Noop, simply ignore the provided comment.
    true
}
function comment_w() {
    # Noop, simply ignore the provided comment.
    true
}

function execute() {
    eval "$*"
}

trap "echo" EXIT
