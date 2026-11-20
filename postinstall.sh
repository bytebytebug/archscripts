#!/usr/bin/env bash

set -euo pipefail


sudo pacman -S --needed \
    docker docker-compose docker-buildx \
    qemu-full virt-manager virt-viewer dnsmasq vde2 libvirt \
    github-cli \
    neovim emacs tmux \
    mise \
    rustup \
    watchexec \
    noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra \
    texlive texlive-langportuguese \
    poppler \
    firefox \
    zed

sudo usermod -aG docker "$USER"
sudo usermod -aG libvirt,kvm "$USER"


grep -qxF 'eval "$(mise activate bash)"' ~/.bashrc || \
    echo 'eval "$(mise activate bash)"' >> ~/.bashrc


rustup update stable

mise install ruby
mise use -g ruby

mise install node
mise use -g node


