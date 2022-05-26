#!/usr/bin/env bash

test -n "$DEBUG" && set -x

#                      __ __       ___
#                     /\ \\ \    /'___`\
#                     \ \ \\ \  /\_\ /\ \
#                      \ \ \\ \_\/_/// /__
#                       \ \__ ,__\ // /_\ \
#                        \/_/\_\_//\______/
#                           \/_/  \/_____/
#                                         Algoritimos
#
#
#      Author: Ivan Lopes
#        Mail: ivan@42algoritmos.com.br
#        Site: http://www.42algoritmos.com.br
#     License: gpl
#       Phone: +1 561 801 7985
#    Language: Shell Script
#        File: projections.sh
#        Date: Sáb 23 Jun 2018 13:34:49 -03
# Description:
# ----------------------------------------------------------------------------
# Modo strict

##############################################################################
##############################################################################
##############################################################################
dir=~/.vim/templates/autotools

file=$(
find ${dir}/ -type f -name cmd.\*.md|
sort |
while read doc; do
    head $doc               |
    sed  -n '1,/^=\{64\}/p' |
    sed -e '1d' -e '$d'     |
    sed.joinlines           |
    sed 's/  */ /g'         |
    sed 's/^/\t/'
done |
  nl -s: |
    fzf-tmux -l 100% --multi --reverse --query="$1" --select-1 --exit-0
)

#[ -n "$file" ] || exit 1
[ -n "$file" ] || {
    exit 1
}

N=$(echo $file| cut -d: -f1)
echo $N

find ${dir}/ -type f -name cmd.\*.md|
sort |
while read doc; do
    let count++
    if [ $count -eq $N ]; then
        echo $doc
        break
    fi
done | xargs -Ifile sed -n '/^#/p' file| sed 's/^#//' | sh

# ----------------------------------------------------------------------------
exit 0
