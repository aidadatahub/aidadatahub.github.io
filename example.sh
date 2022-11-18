#!/bin/sh

## Ruby installation
function ruby_installation() {
    echo -e "${Green}Installation of ruby begins...."
    export DEBIAN_FRONTEND=noninteractive
    apt install rbenv -y > /dev/null 2>&1
    echo -e "${Green}Installed rbenv"
    rbenv init
    echo -e "${Green}rbenv init"
}

## Ruby build and ruby version 2.7.4 installation
function ruby_build() {
    git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build > /dev/null 2>&1
    echo -e "${Green}installed ruby-build"
    rbenv install 2.7.4 > /dev/null 2>&1
    echo "installed rbenv version 2.7.4"
    rbenv local 2.7.4
}

## Installing the bundles
function bootstrap() {
    eval "$(rbenv init -)"
    bundle install > /dev/null 2>&1
    echo -e "${Green}installed bundle"
    bundle exec jekyll serve
}

## Checking if ruby is installed in the system
if ! command -v rbenv &> /dev/null;then
    echo "rbenv is not installed"
    ruby_installation
else
    echo "rbenv is already installed"
fi

## Checking if ruby-build is installed in the system
rb="$(rbenv versions | grep '2.7.4')"

if [[ $rb == *"2.7.4"* ]];then
    echo "Ruby 2.7.4 is installed"
else
    echo "Ruby 2.7.4 is not installed"
    ruby_build
fi

bootstrap
