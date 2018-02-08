# Laptop
curl https://raw.githubusercontent.com/thoughtbot/laptop/master/mac | sh 2>&1 | tee ~/laptop.log

# Bundle Brewfile
brew bundle

# Install OhMyZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Atom packages
sh ./atom.sh

# Disable animations
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false
defaults write -g QLPanelAnimationDuration -float 0
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001
defaults write com.apple.dock launchanim -bool false
defaults write com.apple.finder DisableAllAnimations -bool true

# Set WiFi roaming policy to Strongest
sudo /System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport prefs joinMode=Strongest

# Setup Kryptonite
curl https://krypt.co/kr | sh
kr pair
