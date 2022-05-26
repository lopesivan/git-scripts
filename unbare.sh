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
run ()
{
    files=(
    "branches"
    "config"
    "description"
    "HEAD"
    "hooks"
    "info"
    "objects"
    "packed-refs"
    "refs"
    )

    mkdir -p .git
    for f in ${files[*]}; do
        test -e ~/.${f} &&
            mv ${f} .git/${f}
        done

        git config --local --bool core.bare false
        git reset --hard
    }

run

# ----------------------------------------------------------------------------
exit 0
