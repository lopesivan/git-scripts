#!/usr/bin/env bash

run() {

    cmd="$(
        git remote  -v |
        sed '1s@.*gitolite\.\(.\+\):\([^ ]\+\).*@ssh gitolite.\1 readme \2 set@;q'
    )"

    [ "$1" ] && {
        eval "cat $1 | $cmd";
    }

}

run $1

exit 0
