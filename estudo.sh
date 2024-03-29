#!/usr/bin/env bash
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
#        File: git.sh
#        Date: Qua 22 Fev 2017 03:26:21 BRT
# Description:
#
# ----------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------

##############################################################################
##############################################################################
##############################################################################

# ----------------------------------------------------------------------------
# Run!

for f in $@; do
  # sleep 2

  if [[ -f ${f}.txt ]]; then
    n=1
    while [[ -f ${f}_${n}.txt ]]
    do
      n=$((n+1))
    done
    filename="${f}_${n}.txt"
  else
    filename="${f}.txt"
  fi

  echo create : "$filename"
  echo -e "`date`\narquivo: $filename" > $filename
  command="git add $filename"
  echo command: $command
  $command
  command="git commit -m $filename"
  $command
done

# ----------------------------------------------------------------------------
exit 0
