## 1. Reset rápido só do shell

1. Renomeie (ou apague) dotfiles principais:

```bash
mv ~/.zshrc ~/.zshrc.bak 2>/dev/null || true
mv ~/.zprofile ~/.zprofile.bak 2>/dev/null || true
mv ~/.bash_profile ~/.bash_profile.bak 2>/dev/null || true
```

2. Abra um novo terminal: volta ao `zsh` padrão.
3. Reinstale só o que quiser (oh-my-zsh, zinit, etc.).

---

## 2. Limpar gerenciadores e caches (Homebrew, linguagens)

1. Desinstalar Homebrew:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"
```

2. Reinstalar Homebrew (se for usar):

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

3. Remover caches/configs de linguagens (ajuste se não usar alguma):

```bash
rm -rf ~/.npm ~/.cargo ~/.pyenv ~/.rbenv ~/.local ~/.config
```

4. Para `nvm`, `pyenv`, `rbenv`, etc.: apagar as pastas respectivas já limpa.

---

## 3. Reinstalar Xcode Command Line Tools

Remover e instalar de novo:

```bash
sudo rm -rf /Library/Developer/CommandLineTools && xcode-select --install
```

Verificar instalação depois:

```bash
xcode-select -p
```

---

## 4. Reset total do ambiente de desenvolvimento

Objetivo: voltar a um estado quase “fresh install” sem formatar.

Passos sugeridos (execute conscientemente):

1. Remover Homebrew + diretórios de pacotes:

```bash
# Intel
sudo rm -rf /usr/local/Homebrew
# Apple Silicon
sudo rm -rf /opt/homebrew
```

2. Apagar pastas de linguagens/gerenciadores (reveja antes):

```bash
rm -rf ~/.npm ~/.cargo ~/.pyenv ~/.rbenv ~/.nvm ~/.local ~/.config
```

3. Remover dotfiles em `~` (`.zshrc`, `.bash_profile`, `.gitconfig`, etc.).
4. Limpar configs dev em:
   - `~/Library/Preferences`
   - `~/Library/Application Support`
     (apague só o que for claramente relacionado a dev.)
5. Remover Xcode Command Line Tools e reinstalar (passo 3).
6. Reiniciar terminal e reinstalar apenas o essencial.

Resultado: ambiente limpo, sem precisar formatar o macOS.
