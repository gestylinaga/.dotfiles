# 📘 Log Journal
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
