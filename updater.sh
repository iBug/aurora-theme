#!/bin/bash

if [ -z "$GH_TOKEN" ]; then
  echo "\$GH_TOKEN not set!" >&2
  exit 1
fi

if ! [ -r "remotes.txt" ]; then
  echo "remotes.txt not found!" >&2
  exit 1
fi

set -e

git config --global user.name "iBug"
git config --global user.email "7273074+iBug@users.noreply.github.com"

for repo in $(cat remotes.txt); do
  echo -e "\e[1mWorking on \e[33m$repo\e[0m" >&2
  git clone --depth=1 --branch=gh-pages "https://$GH_TOKEN@github.com/$repo.git" remote &>/dev/null
  cd remote
  git commit --message "Trigger GitHub Pages build from Travis CI" --allow-empty
  git push &>/dev/null
  cd ..
  rm -rf remote
done
