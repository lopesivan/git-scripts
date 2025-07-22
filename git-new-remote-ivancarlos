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
#        File: novo-repositorio-remoto.sh
#        Date: Qui 30 Mar 2017 07:02:48 BRT
# Description:
# ----------------------------------------------------------------------------
# Modo strict
#set -euo pipefail
# ----------------------------------------------------------------------------

##############################################################################
##############################################################################
##############################################################################
if test $# -eq 0; then
  exit 1
fi

# ----------------------------------------------------------------------------
# Run!
project_name=$1
  user=$(git config --get github.ivancarlos.user)
 token=$(git config --get github.ivancarlos.token)

git novo-repositorio-local $project_name


cat <<EOF | sed.joinlines | tr -s " " | sh
curl
  -H 'Authorization: token $token'
  -X POST https://api.github.com/user/repos
  -d '{"name":"${project_name}"}'
EOF

cd $project_name

git m

cat <<EOF >.clone
git clone git@github.com:\$(git config --get github.ivancarlos.user)/${project_name}.git
EOF
git an
git commit -m "Comando mantenedor clonar projeto"

xp git --set-ssh-git > .to_remoto
git an
git commit -m "Converte o projeto em um repositório remoto"

cat <<EOF | sed.joinlines | tr -s " " > .delete-repo
curl
  -X DELETE
  -H "Authorization: token \$(git config --get github.ivancarlos.token)"
  https://api.github.com/repos/\$(git config --get github.ivancarlos.user)/${project_name}
EOF
git an
git commit -m "Ações para deletar o projeto remotamente"

xp git --set-local-git > .to_local
git an
git commit -m "Converte o projeto em um repositório local"

git d
#git push --set-upstream origin develop
git push --set-upstream origin master
###
#git flow feature publish feature/readme
# git push --set-upstream origin feature/readme
# git push --set-upstream origin feature/license
# git push --set-upstream origin feature/goal
# git push --set-upstream origin feature/commit_msg
#git push -u origin master
echo
echo https://github.com/$(git config --get github.ivancarlos.user)/${project_name}
# ----------------------------------------------------------------------------
exit 0
