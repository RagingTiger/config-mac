#!/bin/bash

# funcs
get_brew(){
  # install brew first
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}

ex_brew(){
  # get cli dependencies for install
  brew install "$(cat config/brew_cli.txt | tr '\n' ' ')"
}
