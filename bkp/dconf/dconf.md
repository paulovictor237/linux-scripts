# Reset GNOME Desktop Settings to Factory Default on Ubuntu

```bash
sudo apt install dconf-editor # install dconf
dconf reset -f /org/gnome/ # reset completo
dconf dump / > full-backup # full backup
dconf load / < full-backup # full restore
```
