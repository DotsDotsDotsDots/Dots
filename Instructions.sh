# Install AppStore Apps:
1) Stockfish
2) DropZone
3) Amphetamine
4) Encrypto
5) HextEdit
6) KaBlock
7) UserScripts
8) XCode
9) Vectornator
10) Orbot
11) Transmit
12) Terminus
13) TestFlight
14) Codye

# Install Third Party Apps:
1) TinkerTool

# Install Xcode Command Line Tools:
sudo xcode-select --install
sudo xcodebuild -license accept
softwareupdate --install-rosetta

# Install Brew:
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Formulae:
brew install asciinema bat burp-suite coreutils discord fd fontconfig fzf gh gnupg git go hugo lsd m-cli mas neofetch neovim nmap node podman pv radare2 ripgrep shellcheck spotify starship thefuck tmux telegram tree vim wget alfred alt-tab amethyst android-studio appcleaner cheatsheet element fig hyper insomnia maccy minecraft neovide numi obsidian onyx postman session steam topnotch visual-studio-code hiddenbar google-chrome zsh-async zsh-autosuggestions zsh-completions zsh-fast-syntax-highlighting zsh-git-prompt zsh-history-substring-search zsh-lovers zsh-navigation-tools zsh-vi-mode zsh-you-should-use

# Install Casks:
brew tap homebrew/cask-fonts
brew tap railwaycat/emacsmacport
brew install emacs-mac --with-modules
brew install --cask brooklyn --no-quarantine
brew install --cask font-victor-mono-nerd-font
brew install --cask gpg-suite
brew install --cask vmware-fusion
brew install --cask podman-desktop
brew install --cask docker
brew install --cask keybase

# Install Nix:
sh <(curl -L https://nixos.org/nix/install)

# Install OhMyZSH:
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install RustUp:
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Install SpaceShip:
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Install NVChad:
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

# Install AwesomeVim:
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
cd ~/.vim_runtime
git reset --hard
git clean -d --force
git pull --rebase
pip3 install requests
python3 ~/.vim_runtime/update_plugins.py
cp ~/Dots/Configs/Vim/*.vim ~/.vim_runtime/vimrcs/.
cd ~/

# Install Doom:
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.emacs.d
~/.emacs.d/bin/doom install
mv /opt/homebrew/opt/emacs-mac/Emacs.app /Applications/Emacs.app
cp ~/Dots/Configs/Doom/*.el ~/.doom.d/.
~/.emacs.d/bin/doom sync
~/.emacs.d/bin/doom upgrade
~/.emacs.d/bin/doom doctor

# Install PowerLine Fonts:
git clone https://github.com/powerline/fonts.git --depth=1 ~/Fonts
chmod +x ~/Fonts/install.sh
~/Fonts/install.sh
rm -rf ~/Fonts

# Install Flutter:
mkdir ~/Developer
git clone https://github.com/flutter/flutter.git -b stable ~/Developer/Flutter
sudo gem install ffi -- --enable-libffi-alloc
sudo gem install cocoapods
~/Developer/Flutter/bin/flutter doctor --android-licenses
~/Developer/Flutter/bin/flutter doctor

# Install Astro:
mkdir ~/Developer/Site
cd ~/Developer/Site
npm create astro@latest -- --template blog
npm cache clean –-force

# Setup SSH Key:
ssh-keygen -t ed25519 -C "@iCloud.com"
eval "$(ssh-agent -s)"
ssh-add --apple-use-keychain ~/.ssh/id_ed25519
pbcopy < ~/.ssh/id_ed25519.pub

# Setup GPG Key:
gpg --full-generate-key
gpg --list-secret-keys --keyid-format=long
gpg --armor --export "Key ID"

# Setup GitHub:
git config --global user.name "Shreyash Gavali"
git config --global user.email "@iCloud.com"
git config --global user.signingkey "Key ID"
git config --global commit.gpgsign true
git config --global credential.helper osxkeychain
gh auth login
gh auth status

# Setup DotFiles:
cp ~/Dots/Configs/config ~/.ssh/config
cp ~/Dots/Configs/.hyper.js ~/.hyper.js
cp ~/Dots/Configs/.zprofile ~/.zprofile
cp ~/Dots/Configs/.zshrc ~/.zshrc
cp ~/Dots/Configs/starship.toml ~/.config/starship.toml
