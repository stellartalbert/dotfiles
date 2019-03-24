export NVM_DIR="$HOME/.nvm" && (
  git clone https://github.com/creationix/nvm.git "$NVM_DIR"
  cd "$NVM_DIR"
  git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" origin`
) && \. "$NVM_DIR/nvm.sh"

nvm install node --latest-npm
nvm install --lts --latest-npm
nvm install --lts=boron --latest-npm
nvm install --lts=carbon --latest-npm

nvm use --lts
npm install -g expo-cli

