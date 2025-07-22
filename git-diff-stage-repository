#!/usr/bin/env bash


run() {

local S='\e[1;49;36mStaged Area\e[0m'
local R='\e[38;5;33mRepository\e[0m'
local W='\e[1;39;1mWorking  Area\e[0m'
echo  -e "diff [$S] [$R]"
git --no-pager diff --cached $1
    #echo  -e "diff [$W] [$R]"
}

run $1

exit 0
