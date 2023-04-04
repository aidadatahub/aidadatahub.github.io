#!/bin/sh

ruby_installation() {
    printf "%s\n %s""${GREEN}Installation of ruby begins....${NORMAL}"
    export DEBIAN_FRONTEND=noninteractive
    sudo apt install rbenv -y > /dev/null 2>&1
    printf "%s\n %s""${GREEN}Installed rbenv ${NORMAL}"
    rbenv init
    printf "%s\n%s""${GREEN}rbenv init${NORMAL}"
}

ruby_build() {
    git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build > /dev/null 2>&1
    printf "%s\n%s""${GREEN}installed ruby-build${NORMAL}"
    rbenv install 2.7.4 > /dev/null 2>&1
    echo "installed rbenv version 2.7.4"
    rbenv local 2.7.4
}

bootstrap() {
    eval "$(rbenv init -)"
    bundle install > /dev/null 2>&1
    printf "%s%s""${GREEN}installed bundle${NORMAL}\n"
    bundle exec jekyll serve -l -o
}

if ! command -v rbenv > /dev/null 2>&1;then
    echo "rbenv is not installed"
    ruby_installation
else
    echo "rbenv is already installed"
fi

GREEN=$(tput setaf 2)
NORMAL=$(tput sgr0)

rb="$(rbenv versions | grep '2.7.4')"

if [[ $rb == *"2.7.4"* ]];then
    echo "Ruby 2.7.4 is installed"
else
    echo "Ruby 2.7.4 is not installed"
    ruby_build
fi

bootstrap
