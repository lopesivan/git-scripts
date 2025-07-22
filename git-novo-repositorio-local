#!/usr/bin/env bash
GIT=${HOME}/git

#
# ----------------------------- error functions ------------------------------
#

# The error function print menssage of error.
#
_error() {
  exec 4>&1 # stdout duplicado ( FD 4 tem as mesmas caracteristicas
            # do STDOUT), aponta para o terminal.
  exec 1>&2
  echo ERROR: "$*"
  exec 1>&4 # FD 1 recebe as caracteristicas de FD 4.
            # FD 1 ressetado.
  exec 4>&- # FD 4 eh liberado.
}

# The error function print menssage of error.
#
_abort_now() {
  _error '***' aborted '***'
  exit 1
}

# Validation:
# The program requires an argument or abort the execution
#
test $# -eq 0 && { _error "Você não informou o nome do repositório"; _abort_now;}

# ----------------------------------------------------------------------------

original_dir=$PWD
dir=$(echo "$*" | sed -r 's/[  ]+/-/g')
git_dir=$GIT/${dir}.git

# create dir
test -d $dir &&
  { _error "O projeto já existe!";
    _error `tput bold setb 3`solution:`tput setaf 1` "rm -rf $dir" `tput sgr0`;
    echo rm -rf $dir| /usr/bin/xclip -selection clipboard;
    _abort_now; }

# create dir
test -d $git_dir &&
  { _error "O repositório existe!";
    _error `tput bold setb 3`solution:`tput setaf 1` "rm -rf $GIT/${dir}.git" `tput sgr0`;
    echo rm -rf $GIT/${dir}.git| /usr/bin/xclip -selection clipboard;
    _abort_now; } ||
  { mkdir -p $GIT/${dir}.git && cd $_; }

pwd

# Inicialize
git init --bare

# retorna para workspace
cd $original_dir
pwd

echo
echo clone:
echo ================================
echo git clone file://${HOME}/git/${dir}.git
echo ================================
echo

git clone file://${HOME}/git/${dir}.git
#git remote add origin file://${HOME}/git/${dir}.git

cd ${dir}
git flow init -d

f=GOAL
git flow feature start goal
 > $f
git an
echo descreva a meta > $f
git an
git an
git ci -m "descrição da minha meta"

f=README.md
git flow feature start readme
 > $f
git an
cat <<EOF > $f
# __NAME__

## Objetivo

## Descrição

### Instalação

### Configuração

## FAQ

## License

## Sobre mim

Me chamo Ivan, sou engenheiro eletricista e sócio proprietário da
42algoritmos.com.br.

[modeline]: # ( vim: set tw=64 ts=4 foldlevel=1:  )
EOF

git an
git an
git ci -m "descrição do projeto"

git flow feature start license
echo GNU GPL versão 3 > LICENCE
git an
git ci -m "GPLv3"

git flow  feature start commit_msg
cp $(dirname $(readlink -f $(which git-novo-repositorio-local)))/commit_message.md .
git add commit_message.md
git ci -m "adiciona dicas de como escrever commits"

git co develop
cat <<EOF >HOWTOCLONE
# local
#git clone file://\${HOME}/git/${dir}.git
#git remote add origin file://\${HOME}/git/${dir}.git
# record pass
#eval \`ssh-agent\`
EOF

git add HOWTOCLONE
git ci -m "Exemplo de como clonar o projeto *${dir}*"

cat <<EOF >.gitignore
tags
tags.lock
tags.temp
EOF

git add .gitignore
git ci -m "Adiciona .gitignore"

echo publicando...
#git push origin develop
#git push origin master
#git push origin feature/goal
#git push origin feature/license
#git push origin feature/readme

git d

echo
echo bye
# ----------------------------------------------------------------------------
exit 0
