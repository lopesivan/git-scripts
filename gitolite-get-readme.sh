#!/usr/bin/env bash

run() {
    git remote  -v |
     sed '1s@.*gitolite\.\(.\+\):\([^ ]\+\).*@ssh gitolite.\1 readme \2@;q'
}

run

exit 0
