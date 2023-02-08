# Log Journal - Arch Build
## 2023-2-7
  - installed `nvidia-lts` package for use with `linux-lts`

## 2023-1-21
  - added nvidia modules to `/etc/mkinitcpio.conf`
  - `MODULE(nvidia nvidia_modeset nvidia_uvm nvidia_drm)`

## 2023-1-15
  - installed `tlp` for laptop battery optimization & enabled it with `systemctl enable tlp.service`
  - installed `linux-lts` (the actual kernel, not just the headers)
  - added systemd-boot entry for `linux-lts` in `/boot/loader/entries/` 
  - by following these guides:
    - add option to [`systemd-boot`](https://wiki.archlinux.org/title/Systemd-boot#Configuration)
    - see [reddit post](https://old.reddit.com/r/archlinux/comments/7h29r4/need_help_to_configure_a_systemdboot_entry_with/)

## 2023-1-11
  - installed `linux-lts-headers` as backup "Long Term Support" kernel

## 2023-1-9
  - enabled parallel downloads in `/etc/pacman.conf`
  - enabled `ILoveCandy` in `/etc/pacman.conf`

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
