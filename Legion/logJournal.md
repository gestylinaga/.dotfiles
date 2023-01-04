# Log Journal - Arch Build

## 2023-1-4
  - enabled `color` in `/etc/pacman.conf`

## 2022-12-27
  - fixed `markdown-preview.nvim` by running `:call mkdp#util#install()` inside
  nvim. (This manually installs `markdown-preview`)

## 2022-12-26
  - Fresh Arch install
  - added `/dev/sda/` auto-mount point at `/mnt/Storage/` in `/etc/fstab`
  - added new ssh github key
  - replaced `nvidia-open` package with `nvidia`
  - ran `sudo nvidia-config` to generate xorg config for nvidia
