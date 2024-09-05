# 📘 Log Journal
## 2024-9-5
- fixed full `/boot` partition by:
  - disabling fallback initramfs images in `/etc/mkinitcpio.d/*`
  - deleted old fallback initramfs images in `/boot/`
  - regenerating boot images with `mkinitcpio -P`

## 2024-5-3
- edited `/etc/mkinitcpio.conf` to match pacnew
  - moved `modconf` hook higher up list:
  - `HOOKS(base udev autodetect microcode modconf keyboard keymap block filesystems fsck)`
  - regenerated image with command `mkinitcpio -P`

## 2024-5-2
- downgraded `glibc` package to fix steam not opening with command:
  - `pacman -U file:///var/cache/pacman/pkg/lib32-glibc-2.39-2-x86_64.pkg.tar.zst`

## 2024-3-25
- made backup of `/etc/pacman.d/mirrorlist` as `/etc/pacman.d/mirrorlist.bak`
- commented out outdated mirror (first entry)
- ran `pacman -Syyu` to force refresh package list
- updated from GNOME 45.5 to GNOME 46 (~100 packages updated)

## 2024-3-16
- fix: rebuilt paru to reflect new pacman update
 - `git clone https://aur.archlinux.org/paru.git`
 - `cd paru && makepkg -si`

## 2024-3-10
- add lts `Target` options to `/etc/pacman.d/hooks/nvidia.hook`
  - `Target=nvidia-lts`
  - `Target=linux-lts`
  - this ensures that `mkinitcpio` also runs when the lts packages are upgraded

## 2024-3-4
- manually ran `mkinitcpio -P` to reload nvidia modules after failed pacman hook
- new mkinitcpio changes needing manual intervention:
  - removed the `ALL_microcode` option in `/etc/mkinitcpio.d/linux.preset` & 
  `/etc/mkinitcpio.d/linux-lts.preset`
  - added `microcode` hook to `/etc/mkinitcpio.conf`
- manually ran `mkinitcpio -P` again after making changes to the `.conf` file

## 2024-2-27
- changed `InputDevice` driver in `/etc/X11/xorg.conf`
  - from `mouse` to `evdev` for better support for mice with more than 3 buttons
  - set `Evdev Mouse` for `InputDevice` in `Section "ServerLayout"`
  - instructions in this [Arch Wiki Section](https://wiki.archlinux.org/title/Mouse_buttons#evdev_Xorg.conf_setup)

## 2024-2-26
- removed unused/orphaned packages with command:
  - `pacman -Qdtq | pacman -Rns -`

## 2024-2-22
- enabled virtualization service/socket
  - `systemctl enable libvirtd.service`
  - `systemctl enable libvirtd.socket`
  - `systemctl start libvirtd.socket`

## 2024-2-21
- added auto mount points for other drives in `/etc/fstab`
- replaced `nvidia-dkms` with `nvidia` package
- add nvidia kernel modules in `/etc/mkinitcpio.conf`
  - `Modules=(nvidia nvidia_modeset nvidia_uvm nvidia_drm)`
- added pacman hook for nvidia in `/etc/pacman.d/hooks/nvidia.hook`
- generated xorg config for nvidia with command: `nvidia-xconfig`
- added `webp.thumbnailer` file to `/usr/share/thumbnailers/` for webp previews
- fixed 'read-only' HDD by:
  - unmounting partition: `umount /mnt/HDD`
  - running: `ntfsfix --clear-dirty /dev/sdb2`
  - remounting: `mount /dev/sdb2 /mnt/HDD`
  - checking results with: `mount -t fuseblk`

## 2024-2-20
- Fresh Arch Install
- Kernel: linux & linux-lts
- Filesystem: ext4
- Desktop Environment: GNOME
- 712 packages for base install
