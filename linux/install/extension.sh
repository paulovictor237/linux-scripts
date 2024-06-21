#!/bin/bash

array=(
  https://extensions.gnome.org/extension/779/clipboard-indicator/
  # https://extensions.gnome.org/extension/5278/pano/
  # https://extensions.gnome.org/extension/352/middle-click-to-close-in-overview/
  # https://extensions.gnome.org/extension/4033/x11-gestures/
  # https://extensions.gnome.org/extension/906/sound-output-device-chooser/
  # https://extensions.gnome.org/extension/1401/bluetooth-quick-connect/
  # https://extensions.gnome.org/extension/3933/toggle-night-light/
  # https://extensions.gnome.org/extension/4506/simple-system-monitor/
  # https://extensions.gnome.org/extension/2857/maximize-to-workspace-with-history/

  # https://extensions.gnome.org/extension/943/workspace-scroll/
  # https://extensions.gnome.org/extension/3193/blur-my-shell/
  # https://extensions.gnome.org/extension/2639/hide-minimized/
  # https://extensions.gnome.org/extension/4158/gnome-40-ui-improvements/
  # https://extensions.gnome.org/extension/3740/compiz-alike-magic-lamp-effect/

  # https://extensions.gnome.org/extension/19/user-themes/
  # https://extensions.gnome.org/extension/4269/alphabetical-app-grid/
  # https://extensions.gnome.org/extension/5853/show-apps-at-top/
  # https://extensions.gnome.org/extension/4709/another-window-session-manager/
  # https://extensions.gnome.org/extension/1162/emoji-selector/
)

for i in "${array[@]}"
do
  EXTENSION_ID=$(curl -s $i | grep -oP 'data-uuid="\K[^"]+')
  VERSION_TAG=$(curl -Lfs "https://extensions.gnome.org/extension-query/?search=$EXTENSION_ID" | jq '.extensions[0] | .shell_version_map | map(.pk) | max')
  wget -O ${EXTENSION_ID}.zip "https://extensions.gnome.org/download-extension/${EXTENSION_ID}.shell-extension.zip?version_tag=$VERSION_TAG"
  gnome-extensions install --force ${EXTENSION_ID}.zip
  if ! gnome-extensions list | grep --quiet ${EXTENSION_ID}; then
      busctl --user call org.gnome.Shell.Extensions /org/gnome/Shell/Extensions org.gnome.Shell.Extensions InstallRemoteExtension s ${EXTENSION_ID}
  fi
  gnome-extensions enable ${EXTENSION_ID}
  rm ${EXTENSION_ID}.zip
done

# pano
sudo apt install gir1.2-gda-5.0 gir1.2-gsound-1.0 -y

# gesture
sudo add-apt-repository ppa:touchegg/stable
sudo apt update
sudo apt install -y touchegg
systemctl status touchegg

