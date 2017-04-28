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
set -euo pipefail
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
  user=$(git config --get github.user)
 token=$(git config --get github.token)

cat <<EOF | sed.joinlines | tr -s " " | sh
curl
  -H 'Authorization: token $token'
  -X POST https://api.github.com/user/repos
  -d '{"name":"${project_name}"}'
EOF

git novo-repositorio-local $project_name

cd $project_name

git d
echo '*.local' > .gitignore
git add .gitignore
git commit -m "Nenhum arquivo local pode ser uplowdado"

git flow feature start remoto
xp git --set-ssh-git > to_remoto
git add to_remoto
git commit -m "Converte o projeto em um repositório remoto"

cat <<EOF | sed.joinlines | tr -s " " > delete-repo.local
curl
  -X DELETE
  -H "Authorization: token \$(git config --get github.token)"
  https://api.github.com/repos/\$(git config --get github.user)/${project_name}
EOF
#git commit -m "Ações para deletar o projeto remotamente"

git flow feature start local
xp git --set-local-git > to_local
git add to_local
git commit -m "Converte o projeto em um repositório local"

git d
git push --set-upstream origin develop
git push --set-upstream origin master
#git push -u origin master
# ----------------------------------------------------------------------------
exit 0
