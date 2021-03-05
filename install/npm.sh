#!/usr/bin/env bash

brew install nvm

# Globally install with npm

packages=(
  gatsby-cli
  grunt
  gulp
  http-server
  nodemon
  react
  release-it
  spot
  svgo
  tldr
  underscore-cli
  vtop
)

npm install -g "${packages[@]}"
