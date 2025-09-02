## Guia Rápido React Native / Expo – macOS Sequoia (Apple Silicon M4)

Tudo essencial (copiar e colar). Rode em um terminal Zsh.

### 1. Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update && brew upgrade
```

### 2. Node (mise) + Watchman

```bash
brew install mise watchman
mise install node@22
mise use --global node@22
```

### 3. Xcode / iOS

1. Instalar Xcode (App Store).
2. Depois:

```bash
sudo xcode-select -s /Applications/Xcode.app/Contents/Developer
xcode-select --install || true
sudo xcodebuild -license accept
```

3. Abrir Xcode > Settings > Locations > selecionar Command Line Tools.
4. (Simulador) Xcode > Settings > Platforms / Components > adicionar iOS Simulator se faltar.

### 4. Expo

```bash
npx create-expo-app MeuApp
cd MeuApp
npm run ios       # abre simulador iOS
npm run android   # se AVD configurado
```

### 5. Dependências nativas (necessário p/ bare workflow / builds nativas)

Para continuar só no managed (Expo Go) NÃO precisa disso agora. Necessário quando for: `npx react-native run-android`, adicionar libs nativas, EAS Build Android/iOS, ou fazer prebuild.

#### iOS – Cocoapods

```bash
brew install cocoapods
```

#### Android – JDK (Java 17)

Requerido para Gradle / Android build.

Comandos (rodar uma vez / sessão atual):

```bash
brew install --cask temurin17
/usr/libexec/java_home -V        # listar versões
export JAVA_HOME=$(/usr/libexec/java_home -v 17)
java -version
```

Adicionar ao ~/.zshrc (persistente):

```bash
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$PATH:$ANDROID_HOME/emulator:$ANDROID_HOME/platform-tools"
export JAVA_HOME=$(/usr/libexec/java_home -v 17)
```

Depois de editar o zshrc: `source ~/.zshrc` ou abrir novo terminal.
