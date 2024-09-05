# Log Journal
- 2024-9-5
  - fixed full `/boot` partition:
    - disabled fallback initramfs images in `/etc/mkinitcpio.d/`
    - deleted fallback images in `/boot/`
    - deleted fallback loaders from systemd-boot in `/boot/loader/entries/`
    - regenerated boot images with command `mkinitcpio -P`

- 2024-6-24
  - installed `nvidia-prime-rtd3pm` 
    - enabled with `systemctl enable nvidia-persistenced.service`
    - adds udev rules
    - adds module parameters
  - installed `switcheroo-control` for gnome integration for hybrid graphics
  - installed `nvidia-lts` for use with `linux-lts`

- 2024-6-20
  - Fresh reinstall
  - add pacman options
    - color
    - parallel downloads
    - ILoveCandy
