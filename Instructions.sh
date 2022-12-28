# Install AppStore Apps:
01) StockFish
02) DropZone
03) TestFlight
04) HextEdit
05) UserScripts
06) KaBlock
07) XCode
08) Encrypto
09) Vectornator
10) Orbot
11) Transmit
12) Terminus
13) Amphetamine
14) Codye
15) Endel

# Install Third Party Apps:
01) TinkerTool

# Install Xcode Command Line Tools:
sudo xcode-select --install
sudo xcodebuild -license accept
softwareupdate --install-rosetta

# Install Brew:
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Formulae:
brew install asciinema bat btop blender cowsay coreutils discord docker fd fontconfig fortune osquery fzf mkcert snort gh gitleaks gnupg hexedit hexyl git go yara openemu hugo onionshare imagemagick ffmpeg lazygit clamav lsd mas sshuttle neofetch neovim nmap monitorcontrol notion node podman pv ripgrep torsocks shellcheck ciphey spotify starship sampler thefuck tmux tldr cheat telegram tree vim wget weechat alfred amethyst appcleaner cheatsheet element fig hyper insomnia maccy minecraft neovide numi obsidian onefetch onyx postman session steam topnotch chezmoi socat telnet lua httpie ipfs tor cmatrix gawk moreutils findutils renameutils rename rlwrap gource rsync figlet toilet ponysay asciiquarium lolcat aalib zoxide tokei crunch reaver lynis zellij difftastic just ngrok cpufetch pfetch rustscan miniconda openvpn maltego cutter bind dnsmasq pwncat volatility retroarch delta kondo trash hcxtools procs nvm gum glow vhs theharvester subfinder navi urh rig sd zx sl rclone nikto hiddenbar exif exiftool ack wireshark pwntools zeek monit masscan zmap apktool smali hub ghidra bettercap bfg binutils binwalk cifer fcrackzip foremost hashpump hashcat gobuster hydra john httpx nuclei ffuf exploitdb knock netpbm pngcheck sqlmap tcpflow tcpreplay tcptrace xpdf xz sn0int dex2jar dns2tcp aria2 iperf3 radare2 i2p i2pd m-cli android-studio ucspi-tcp gpg-suite tor-browser virustotal-cli arduino-cli wireguard-tools wireguard-go owasp-zap burp-suite git-lfs gnu-sed alt-tab speedtest-cli proxychains-ng aircrack-ng vmware-fusion cloudflare-warp openvpn-connect transmission-cli git-annex visual-studio-code recon-ng google-chrome no-more-secrets reattach-to-user-namespace zsh-async zsh-autosuggestions zsh-completions zsh-fast-syntax-highlighting zsh-git-prompt zsh-history-substring-search zsh-lovers zsh-navigation-tools zsh-vi-mode zsh-you-should-use

# Install Casks:
brew tap homebrew/cask-fonts
brew tap railwaycat/emacsmacport
brew install emacs-mac --with-modules
brew install --cask brooklyn --no-quarantine
brew install --cask font-victor-mono-nerd-font
brew install --cask podman-desktop
brew install --cask arduino
brew install --cask docker
brew install --cask imhex
brew install --cask ipfs
brew install --cask transmission
brew install --cask keybase

# Install Nix:
sh <(curl -L https://nixos.org/nix/install)

# Install OhMyZSH:
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install OhMyTmux:
git clone https://github.com/gpakosz/.tmux ~/.tmux
ln -s -f ~.tmux/.tmux.conf ~/.tmux.conf
cp .tmux/.tmux.conf.local ~/.tmux.conf.local

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
cp ~/Dots/Configs/Vim/* ~/.vim_runtime/vimrcs/.

# Install Doom:
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.emacs.d
~/.emacs.d/bin/doom install
mv /opt/homebrew/opt/emacs-mac/Emacs.app /Applications/Emacs.app
cp ~/Dots/Configs/Emacs/* ~/.doom.d/.
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

# Setup Secure Shell:
ssh-keygen -t ed25519 -C "GavaliShreyash@iCloud.com"
eval "$(ssh-agent -s)"
ssh-add --apple-use-keychain ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub | pbcopy

# Setup Keybase:
keybase pgp gen --multi
keybase pgp export | gpg --import
keybase pgp export --secret | gpg --allow-secret-key-import --import
keybase pgp export | pbcopy
gpg --list-secret-keys --keyid-format=long

# Setup GitHub:
gh auth login
gh auth status
gh ssh-key list
gh gpg-key list

# Setup DotFiles:
cp ~/Dots/Configs/SecureShell/* ~/.ssh/config
cp ~/Dots/Configs/StarShip/* ~/.config/starship.toml
cp ~/Dots/Configs/Vim/* ~/.vim_runtime/vimrcs/.
cp ~/Dots/Configs/Emacs/* ~/.doom.d/.
cp ~/Dots/Configs/Home/.* ~/.