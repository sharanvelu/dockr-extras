#!/bin/bash

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

VERSION=${VERSION:-18.10.0}

nvm install "${VERSION}" | bash
npm install -g npm@latest

ln -s /root/.nvm/versions/node/v${VERSION}/bin/node /usr/local/bin/node
ln -s /root/.nvm/versions/node/v${VERSION}/bin/npm /usr/local/bin/npm

