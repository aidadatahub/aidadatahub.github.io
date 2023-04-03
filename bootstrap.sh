#!/bin/sh

ruby_installation() {
    echo -e "${Green}Installation of ruby begins...."
    export DEBIAN_FRONTEND=noninteractive
    sudo apt install rbenv -y > /dev/null 2>&1
    echo -e "${Green}Installed rbenv"
    rbenv init
    echo -e "${Green}rbenv init"
}

ruby_build() {
    git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build > /dev/null 2>&1
    echo -e "${Green}installed ruby-build"
    rbenv install 2.7.4 > /dev/null 2>&1
    echo "installed rbenv version 2.7.4"
    rbenv local 2.7.4
}

bootstrap() {
    eval "$(rbenv init -)"
    bundle install > /dev/null 2>&1
    echo -e "${Green}installed bundle"
    bundle exec jekyll serve -l -o
}

if ! command -v rbenv &> /dev/null;then
    echo "rbenv is not installed"
    ruby_installation
else
    echo "rbenv is already installed"
fi

rb="$(rbenv versions | grep '2.7.4')"

if [[ $rb == *"2.7.4"* ]];then
    echo "Ruby 2.7.4 is installed"
else
    echo "Ruby 2.7.4 is not installed"
    ruby_build
fi

bootstrap
