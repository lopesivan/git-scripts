#!/usr/bin/env bash

fbr()
{
  local branches branch
  local state=normal
  local current_branch=$(git rev-parse --abbrev-ref HEAD)

  branches=$(git branch)

  if [ "$1" = "-f" ]; then
    branches=$(git branch| grep feature)
  fi

  if [ "$1" = "-r" ]; then
    branches=$(git branch -r)
    state=remote
  fi

  local source_branch=$(echo "$branches" |
    dmenu -i \
          -l 52 \
          -fn 'Droid Sans Mono-31' \
          -nf yellow \
          -nb black \
          -sf black \
          -sb white|
          tr -d '[:space:]')


  git checkout "${source_branch}"

  # Caso deseje copiar um único arquivo do branch origem
  if [ "$1" = "-1" ]; then
    local files=$(git ls-files |
      dmenu -i \
            -l 52 \
            -fn 'Droid Sans Mono-31' \
            -nf yellow \
            -nb black \
            -sf black \
            -sb white|
            tr -d '[:space:]')
  else
    local files=( $(git ls-files) )
  fi

  git checkout "${current_branch}"
  for file in ${files[*]}; do
    git checkout "${source_branch}" "${file}"
  done

}

fbr "$1"

# ----------------------------------------------------------------------------
exit 0
