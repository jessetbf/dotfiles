brew install nvm

nvm install 5
nvm use 5
nvm alias default 5

# Globally install with npm

packages=(
  diff-so-fancy
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
