# 📘 Log Journal
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
- 712 packages for base install
- linux & linux-lts kernel