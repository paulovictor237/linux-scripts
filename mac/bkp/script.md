## 10) Mobile — Android (Android Studio + SDK)

```bash
# JDK 17 (recomendado para Android)
brew install --cask temurin17
# Garantir JAVA_HOME para o JDK 17
echo 'export JAVA_HOME="$(/usr/libexec/java_home -v 17)"' >> ~/.zshrc
source ~/.zshrc

# Android Studio (SDK/AVD via GUI)
brew install --cask android-studio
open -a "Android Studio"
# > Instale: SDK Platform, Platform Tools, Build-Tools, Command-line Tools (SDK Manager)

# Variáveis Android SDK
echo 'export ANDROID_HOME="$HOME/Library/Android/sdk"' >> ~/.zshrc
cat >> ~/.zshrc <<'EOF'
export PATH="$ANDROID_HOME/platform-tools:$PATH"
export PATH="$ANDROID_HOME/emulator:$PATH"
export PATH="$ANDROID_HOME/cmdline-tools/latest/bin:$PATH"
export PATH="$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$PATH"
EOF
source ~/.zshrc

# Aceitar licenças (após instalar Command-line Tools)
yes | sdkmanager --licenses || true

# Watchman (melhora RN/Metro)
brew install watchman

# Verificações
adb version
adb devices
emulator -list-avds || true
```

---

## 11) Mobile — iPhone (Xcode + Simulador)

```bash
# Xcode (instale via App Store)
open -a "App Store" https://apps.apple.com/app/xcode/id497799835
# Após instalar, aceite os termos e componentes
sudo xcodebuild -license accept || true
sudo xcode-select -s /Applications/Xcode.app

# Simulador iOS
open -a Simulator
xcrun simctl list devices

# CocoaPods para projetos iOS (React Native, etc.)
sudo gem install cocoapods
pod --version
```

---

## 12) React Native — Verificação Rápida (por projeto)

```bash
# Dentro do diretório do seu app RN
npx react-native doctor
# iOS: instalar pods (no diretório ios/)
cd ios && pod install && cd -
# Android: gradle wrapper inicial (primeiro build via Android Studio é recomendado)
```
