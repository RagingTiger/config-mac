#!/bin/bash

# globals
BREW_URL="https://raw.githubusercontent.com/Homebrew/install/master/install"
CLI_DEP="https://raw.githubusercontent.com/RagingTiger/config-mac/master/config/brew_cli.txt"

# funcs
get_brew(){
  # install brew first
  /usr/bin/ruby -e "$(curl -fsSL ${BREW_URL})"
}

ex_brew(){
  # get cli dependencies for install
  brew install "$(curl -fsSL ${CLI_DEP} | tr '\n' ' ')"
}

main(){
  # first download brew
  get_brew

  # next install dependencies
  ex_brew
}

# executable
main
