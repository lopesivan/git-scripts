#!/usr/bin/env bash

# Usage:
# $ git acc
# Mostra as contas disponíveis e configura o arquivo `~/.config/hub` com a
# conta selecionada.
#
# [OBSOLET]
# $ git acc -r
# Configura o origin do projeto com o nome do host que faz referencia a chave
# privada em questão.
#
# $ git acc -s
# Mostra as contas disponíveis, configura o arquivo `~/.config/hub` com a
# conta selecionada e salva algumas configurações no arquivo .vars que pode
# ser exportado para o bash corrente usando <x>env vars, onde <x> pode ser py,
# lua ou j, respectivamente assim, pyenv, luaenv, jenv

declare -A IdentityFile
IdentityFile["lopesivan"]="~/.ssh/github/lopesivan.ufrj@gmail.com"
IdentityFile["FortyTwoAlgorithms"]="~/.ssh/github/id_rsa_FortyTwoAlgorithms"
IdentityFile["ivancarlos"]="~/.ssh/github/id_rsa_ivancarlos"

run() {

	if [ "$1" = "-h" ]; then

		cat <<EOF
Mostra as contas disponíveis, configura o arquivo
\`~/.config/hub\` com a conta selecionada e salva algumas
configurações no arquivo .vars que pode ser exportado para o
bash corrente usando <x>env vars, onde <x> pode ser py, lua
ou j, respectivamente assim, pyenv, luaenv, jenv
EOF

        exit 1
	fi

	acc=$(echo lopesivan 42algorithms ivancarlos |
		xargs -n1 |
		fzf)

	_GITHUB_USER="NONE"
	_GITHUB_TOKEN="NONE"

	[ ! -z $acc ] || exit 0

	case x$acc in
	xlopesivan)
		GITHUB_USER=$(git config --get github.lopesivan.user)
		GITHUB_TOKEN=$(git config --get github.lopesivan.token)
		;;
	x42algorithms)
		GITHUB_USER=$(git config --get github.42algorithms.user)
		GITHUB_TOKEN=$(git config --get github.42algorithms.token)
		;;
	xivancarlos)
		GITHUB_USER=$(git config --get github.ivancarlos.user)
		GITHUB_TOKEN=$(git config --get github.ivancarlos.token)
		;;
	x*)
		echo ERROR: Not found
		;;
	esac

	if [ "$1" = "-s" ]; then

		cat <<EOF | tee ./.vars
GITHUB_USER=${GITHUB_USER}
GITHUB_REPO=https://github.com/${GITHUB_USER}?tab=repositories
EOF

		echo '*****************************************************'
		echo NOTE:
		echo "load: eval \"\$(jenv vars)\""
		echo "load: eval \"\$(pyenv vars)\""
		echo "load: eval \"\$(xenv vars)\""
	fi
}

# if [ "$1" = "-r" ]; then
# 	NEW_SSH_HOST=$(grep GITHUB_HOST .vars | cut -d= -f2)
# 	git remote -v | cut -f1 -d' ' | sed "s/.*:/git remote set-url origin git@$NEW_SSH_HOST:/;q"
# else
# 	run $1
# fi

run $1

cat <<EOF >~/.config/hub
github.com:
- user: ${GITHUB_USER}
  oauth_token: ${GITHUB_TOKEN}
  protocol: https
EOF

cat <<EOF >~/.ssh/config.d/github
Host github.com
  HostName github.com
  Port 22
  User git
  IdentityFile ${IdentityFile["${GITHUB_USER}"]}
EOF

exit 0
