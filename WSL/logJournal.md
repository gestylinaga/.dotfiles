# Log Journal - Debian WSL Build

## 1/4/24
  - Update error: apt hangs on configuring 'libc6:amd64'
    - cancelled update, caused partial install which needed to be fixed with:
    `dpkg --configure -a`, but that also got hung
    - solution:
      - cleared out dpkg info with command: 
      - `mv /var/lib/dpkg/info /var/lib/dpkg/info_old`, then ran:
      - `apt-get update && apt-get -f install`, then finally:
      - `apt update && apt upgrade`

## 12/26/23
  - Updated WSL.exe with `wsl --update` in PowerShell
    - Version 2.0.14.0

## 12/23/23
  - installed go (language compiler)
    - added go `PATH` in `.bashrc`

## 12/21/23
  - added .bash_aliases

## 12/19/23
  - upgraded system to 'Trixie' release

## 12/13/23
  - uninstalled neovim
  - rebuilt neovim from source (for up-to-date version for new surfVim config)

## 1/20/23
  - upgraded system to 'Bookworm' aka Testing branch

## 1/12/23
  - uninstalled django with `pip uninstall django`

## 10/27/22
  - installed through npm: sass
  - install through npm: postcss-cli, autoprefixer (for custom bootstrap)

## 10/15/22
  - installed through npm: vscode-langservers-extracted (css lsp)

## 10/14/22
  - installed wget
  - installed through npm: n(node version manager), and typescript(lang/compiler)

## 10/11/22
  - installed through cargo: exa

## 10/10/22
  - installed through pip: pyinstaller

## 10/8/22
  - installed rustup -- Rust language install script

## 9/27/22
  - installed python3-venv
  - installed through pip: django

## 9/26/22
  - installed ranger

## 9/22/22
  - installed cmatrix

## 9/20/22
  - installed npm

## 9/7/22
  - installed python3-pip
  - installed through pip: pygame

## 9/3/22
  - installed nvim plugin: Code_runner

## 9/1/22
  - installed lua5.4

## 9/1/22
  - disabled error bell in `/etc/inputrc` with `set bell-style none`

## 8/31/22
  - web dev icons work in debian client, but not in powershell
  - updated to WSL 2
