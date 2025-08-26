## 🔹 1. Resetar só as configurações do shell

- Apague ou renomeie seus _dotfiles_:
  `mv ~/.zshrc ~/.zshrc.bakmv ~/.zprofile ~/.zprofile.bakmv ~/.bash_profile ~/.bash_profile.bak`
- Quando abrir o terminal de novo, ele vai voltar ao **padrão do macOS** (um `zsh` limpo).
- Depois você reinstala só o que quiser (oh-my-zsh, zinit, etc.).

---

## 🔹 2. Resetar pacotes e dependências (Homebrew, npm, pip, etc.)

- Desinstalar Homebrew completamente:
  `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)" `
- Reinstalar Homebrew:
  `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" `
- Remover caches/configs de linguagens:
  `rm -rf ~/.npm ~/.cargo ~/.pyenv ~/.rbenv ~/.local ~/.config`
  (ajuste conforme as linguagens que usa).
- Se usa `nvm`, `rbenv`, `pyenv`, etc., só apagar as pastas já limpa o ambiente.

---

## 🔹 3. Resetar as ferramentas de compilação da Apple

Às vezes o problema é o **Xcode Command Line Tools** (compiladores, headers, etc.).
Você pode reinstalar assim:
`sudo rm -rf /Library/Developer/CommandLineTools xcode-select --install`

---

## 🔹 4. Resetar completamente o ambiente de programação

Se quiser **zerar tudo mesmo** (como se nunca tivesse programado no Mac): 2. Apague **Homebrew** e todos os pacotes (`/usr/local` ou `/opt/homebrew`). 4. Apague configs de usuário em `~/Library/Preferences`, `~/Library/Application Support` relacionadas a dev. 6. Apague dotfiles em `~`. 8. Reinstale Xcode Command Line Tools.
Depois disso, você volta ao estado “fresh install” sem precisar formatar o macOS inteiro.
