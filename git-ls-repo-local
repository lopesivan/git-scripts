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
#        File: ls-repo.sh
#        Date: Seg 30 Abr 2018 23:39:49 -03
# Description:
# ----------------------------------------------------------------------------
# Modo strict
set -euo pipefail
# ----------------------------------------------------------------------------

##############################################################################
##############################################################################
##############################################################################
# ----------------------------------------------------------------------------
# Run!
# run ()
# {

# local cmd=$(
# find ~/git -type d -name \*.git |
#   while read repo; do
#     echo git clone file://$repo
#   done|sort|
#   fzf-tmux -l 100% --multi --reverse --select-1 --exit-0
# )
# [[ -n "$cmd" ]] &&
#   echo ${cmd}|
#   tee >(xclip -i -selection clipboard)
#   eval `xclip -selection clipboard -o`
# }

run ()
{
    find $1                    \
        -not -iwholename '*/.git' \
        -type d                   \
        -name \*.git              \
        -printf "git clone $1/%P\n" |
        sort                        |
        fzf                         |
        xclip -i -selection clipboard
}

run ~/git

# ----------------------------------------------------------------------------
exit 0
