# brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/peve/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# git
brew install git

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.4/install.sh | bash
npm install -g appcenter-cli
npm install -g yarn
npm install -g pnpm

# android
brew install watchman
brew tap homebrew/cask-versions
brew install --cask zulu11

# ios
brew install ruby
brew install cocoapods
# rode dentro da pasta ios
# pod install