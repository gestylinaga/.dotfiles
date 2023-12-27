# Apt List - Debian WSL Build

## through apt
  - neovim
  - make
  - git
  - man-db
  - lua5.4 -- language/interpreter
  - python3-pip  -- language pacmanager
  - npm -- javascript pacmanager
  - cmatrix
  - ranger
  - python3-env
  - wget
  - python (python 2)
  - neofetch
  - ffmpeg
  - tldr
  - ripgrep

## through git clones|make:
  - /neovim/neovim (for more updated version than available on apt)
  - /wbthomason/packer.nvim (plugins manager)
    - no longer needed, migrated to lazy.nvim
  - /dylanaraps/pfetch

## through pip
  - pygame
  - pyinstaller

## build tools
  - ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen

## through npm:
  - n -- node updater
  - typescript -- language/compiler
  - vscode-langservers-extracted --css language server
  - sass - language/compiler
  - postcss-cli, autoprefixer -- for custom bootstrap

## through curl script:
  - rustup -- Rust language/compiler
  - youtube-dl -- CLI video downloader

## through cargo:
  - exa -- ls replacement

## through tar.gz file
  - go (language compiler)
