brew install watchman
instalar o xcode
https://apps.apple.com/us/app/xcode/id497799835?mt=12

Command Line Tools
Settings > Locations > Command Line Tools

Installing an iOS Simulator in Xcode
Settings > Components > "+" icon and select iOS… option.

Começar com **React Native** em um **Mac novo com chip M4** é bem tranquilo, mas há alguns pontos importantes para já configurar corretamente o ambiente. Vou te passar um passo a passo inicial focado em macOS **Sequoia 15.5** + Apple Silicon:

---

## 1. Instalar ferramentas básicas

No macOS a forma mais prática é via **Homebrew**:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Depois, atualize:

```bash
brew update && brew upgrade
```

---

## 2. Instalar Node.js (com `mise`)

Em Apple Silicon, o mais estável é usar um gerenciador de runtimes (mise ou nvm).
Exemplo com **mise**:

```bash
brew install mise
mise install node@22
mise use --global node@22
```

---

## 3. Instalar Watchman (necessário para RN)

```bash
brew install watchman
```

---

## 4. Instalar Xcode e ferramentas de iOS

- Abra a **App Store** e baixe o **Xcode**.
- Após instalar, rode:

```bash
xcode-select --install
sudo xcodebuild -license

sudo xcode-select -s /Applications/Xcode.app/Contents/Developer
xcode-select --install || true
sudo xcodebuild -license accept

```

- Dentro do Xcode, abra **Preferences → Locations** e selecione a versão do **Command Line Tools**.

---

## 5. Instalar Android Studio (opcional, se for usar Android)

- Baixe em: [developer.android.com/studio](https://developer.android.com/studio)
- Dentro do Android Studio, instale:

  - Android SDK
  - Android SDK Platform
  - Android Virtual Device (AVD)

Adicione ao `~/.zshrc`:

```bash
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
```

---

## 6. Instalar Expo CLI (recomendado para começar rápido)

```bash
npm install -g expo-cli
```

Criar projeto inicial:

```bash
npx create-expo-app MeuApp
cd MeuApp
npm run ios   # abre no simulador iOS
npm run android  # abre no simulador Android (se configurado)
```

---

## 7. Conectar com seu iPhone (opcional, mas útil)

- Instale o **Expo Go** na App Store do iPhone.
- No projeto, rode:

```bash
npx expo start
```

- Escaneie o QR Code com o celular.

---

## 8. Extras recomendados para dev no Mac

- **iTerm2** (terminal melhorado):

  ```bash
  brew install --cask iterm2
  ```

- **Zsh + zinit** com plugins (`autosuggestions`, `completions`, `syntax-highlighting`) → melhora muito a experiência no terminal.
- **Nerd Fonts** para ícones bonitos no terminal:

  ```bash
  brew install --cask font-hack-nerd-font
  ```

---

👉 Com isso você já consegue rodar apps **React Native** em simulador iOS, Android ou direto no iPhone via Expo.
Se quiser avançar depois para builds **bare workflow** (com código nativo), vai precisar também configurar **Cocoapods**:

```bash
brew install cocoapods
```

---

Quer que eu monte um **guia enxuto de comandos (copiar e colar)** só com o essencial para sair rodando um app Expo/React Native no teu Mac M4 novo, sem explicações longas?
