#!/bin/bash

if [ -d $HOME/.nvm ] ; then
	echo "nvm already installed"
else
	curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
	export NVM_DIR="$HOME/.nvm"
	[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
	[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
	nvm install 8.11.4
	npm install -g mocha loopback-cli pm2
fi