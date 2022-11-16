#!/bin/bash
Green='\033[0;32m'
export DEBIAN_FRONTEND=noninteractive
sudo apt install rbenv -y > /dev/null 2>&1
echo -e "${Green}Installed rbenv"
rbenv init
echo -e "${Green}rbenv init"
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build > /dev/null 2>&1
echo -e "${Green}installed ruby-build"
rbenv install 2.7.4 > /dev/null 2>&1
echo "installed rbenv version 2.7.4"
rbenv local 2.7.4
eval "$(rbenv init -)"
bundle install > /dev/null 2>&1
echo -e "${Green}installed bundle"
bundle exec jekyll serve