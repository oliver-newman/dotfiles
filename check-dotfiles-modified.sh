#!/usr/bin/env bash
# Quick script to warn me if my dotfiles GitHub repo has been updated since I
# last pulled from it.

DF_DIR=~/dotfiles

git -C $DF_DIR fetch origin

if [[ "$(git -C ~/dotfiles rev-list HEAD...origin/master --count)" -gt 0 ]]; then
  msg="\033[1;31mYour dotfiles are out of sync with origin.\033[0m\n"
  msg+="To update them, run:\n\n"
  msg+="\tgit pull -C ${DF_DIR}\n"
  msg+="OR\n"
  msg+="\tgit -C ${DF_DIR} commit -am '<commit-message>'\n"
  msg+="\tgit -C ${DF_DIR} push\n"
  echo -e $msg
fi
