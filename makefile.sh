#!/usr/bin/env bash
__help__=0
__readmode__=1;
[ "$1" = '-p'     ] && { __readmode__=0; ECHO=echo;shift; }
[ "$1" = '--help' ] && { __help__=1;     ECHO=echo;shift; }
[ "$1" = '-h'     ] && { __help__=1;     ECHO=echo;shift; }

##############################################################################
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

if [ $__help__ -eq 1 ]; then
  #__help__ has value equal 1
  #__help__ ON
  echo "`basename $0` [-h|--help]   show this help"
  echo "`basename $0` [-p]          create template"
  exit 1
fi

##############################################################################
##############################################################################
##############################################################################
dir=~/.vim/templates/make/makefile

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

if [ $__readmode__ -eq 1 ]; then
  #__readmode__ has value equal 1
  #__readmode__ ON
  find ${dir}/ -type f -name cmd.\*.md|
  sort |
  while read doc; do
      let count++
      if [ $count -eq $N ]; then
          echo $doc
          break
      fi
  done | xargs -Ifile vim -c'0' -c'map ? :qall!<CR>' -c'map <ESC> :qall!<CR>' -c'map q :qall!<CR>'  -c'colorscheme base16-cupcake' -c'Goyo' file

else
  #__readmode__ has value equal 0
  #__readmode__ OFF
  find ${dir}/ -type f -name cmd.\*.md|
  sort |
  while read doc; do
      let count++
      if [ $count -eq $N ]; then
          echo $doc
          break
      fi
  done | xargs -Ifile sed -n '/^#/p' file| sed 's/^#//' | sh
fi

# ----------------------------------------------------------------------------
exit 0
