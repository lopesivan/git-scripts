#!/usr/bin/env bash

run() {
    ssh $(git remote get-url origin | cut -f1 -d:) D unlock $(git remote get-url origin| cut -f2 -d:)
    ssh $(git remote get-url origin | cut -f1 -d:) D rm $(git remote get-url origin| cut -f2 -d:)
}

run

exit 0
