#!/usr/bin/env bash

ide:setup() {
    brew:install:brew:itself
    brew tap caskroom/cask
    brew cask install minikube
    brew install idris

    minikube start
    eval $(minikube docker-env)

    docker run -d -v /tmp/.X11-unix/:/tmp/.X11-unix/ \
                -v /dev/shm:/dev/shm \
                -v ${HOME}/.atom:/home/atom/.atom \
                -e DISPLAY \
                jamesnetherton/docker-atom-editor
}

brew:install:brew:itself() {
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}