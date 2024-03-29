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
#        Mail: ivan (at) 42algoritmos (dot) com (dot) br
#        Site: http://www.42algoritmos.com.br
#     License: gpl
#       Phone: +1 561 801 7985
#    Language: Shell Script
#        File: ls-branch.sh
#        Date: Qui 30 Mar 2017 08:39:13 BRT
# Description:
# ----------------------------------------------------------------------------
# Modo strict
#set -euo pipefail
# ----------------------------------------------------------------------------

##############################################################################
##############################################################################
##############################################################################

# ----------------------------------------------------------------------------
# Run!

# fbr - checkout git branch
fbr() {
  #echo cd $PWD| dmenu -i -l 52 -fn 'Droid Sans Mono-31' -nf yellow -nb black -sf black -sb white
  #return 1
  local branches branch
  local state=normal

  branches=$(git branch)

  if [ "$1" = "-f" ]; then
    branches=$(git branch| grep feature)
  fi

  if [ "$1" = "-r" ]; then
    branches=$(git branch -r)
    state=remote
  fi

  branch=$(echo "$branches" |
    dmenu -i \
          -l 52 \
          -fn 'Droid Sans Mono-31' \
          -nf yellow \
          -nb black \
          -sf black \
          -sb white)

  if [[ "remote" == "$state" ]]; then
    git checkout -t $branch
    # git switch $branch
  else
    git checkout $branch
  fi
}

fbr $1
# ----------------------------------------------------------------------------
exit 0
