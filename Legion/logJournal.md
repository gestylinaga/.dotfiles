# Log Journal - Arch Build
## 2023-3-5
  - new mkinitcpio changes needing manual intervention:
    - added `microcode` hook to `/etc/mkinitcpio.conf`
    - manually ran `mkinitcpio -P` after making changes to the `.conf` file

## 2023-2-9
  - installed `cups` & `hplip` for printer support
    - enabled cups socket with `systemctl enable cups.socket`
    - added user to `cups` & `lp` groups
    - ran hp setup tool with `hp-setup -i <ip_address>` with printer address
    - started hp systray with `hp-systray` command

## 2023-1-24
  - enabled 'selectable graphics' in bios
  - removed `/etc/X11/xorg.conf` file (backup in `~`)
  - installed 'nvidia-prime' for hybrid graphics control
    - usage: `prime-run <program-name>`
  - installed 'switcheroo-control' for hybrid graphics gnome integration
    - enabled with command: `systemctl enable switcheroo-control.service`
  - installed AUR package 'nvidia-prime-rtd3pm' to power down GPU if not in use
    - adds udev rules
    - adds module parameters
    - `systemctl enable nvidia-persistenced.service`
  - enabled `sshd.service` for SSH client

## 2023-1-22
  - commented out broken mirror in `/etc/pacman.d/mirrorlist`
  - uninstalled deprecated package `webkit2gtk-5.0`

## 2023-1-14
  - bluetooth support previously installed (bluez), just not enabled
    - enabled with `systemctl enable bluetooth.service`

## 2023-1-9
  - cleared cached versions of all packages (except for last 3) with command:
    - `paccache -r`
  - enabled weekly cache clears with `paccache.timer`
    - `systemctl start paccache.timer`
    - `systemctl enable paccache.timer`
  - cleared cache of unused packages with command:
    - `pacman -Sc`

## 2023-12-7
  - system updated after a few months without:
    - updated keyring first with `sudo pacman -Sy archlinux-keyring`
    - updated like normal with `sudo pacman -Syu`

## 2023-4-12
  - cleared pacman cache with `sudo pacman -Sc`

## 2023-2-12
  - edited `/etc/pacman.d/mirrorlist` to fix broken mirrors

## 2023-2-10
  - ran `sudo mkinitcpio -P` to reload nvidia modules after failed pacman hook

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
