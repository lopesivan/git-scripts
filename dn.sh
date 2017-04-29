#!/usr/bin/env bash


run() {
    git status --short --branch |
    grep '^.[DM\?]'             |
    head -1                     |
    awk '$1 ~ /[MD]/ {print $2} $1 ~ /\?/ {print "/dev/null " $2}' |
    xargs git diff -- && git w
}

run

exit 0
