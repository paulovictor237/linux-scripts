# Copilot Instructions

## Repository Purpose

Personal dotfiles and environment setup scripts for Ubuntu Linux and macOS. Content is in **Brazilian Portuguese**. Scripts are designed to be read and executed block-by-block in a terminal — not as automated pipelines.

## Structure

```
linux/SETUP.md          ← Canonical Ubuntu 22.04+ setup guide (current, block-by-block)
mac/SETUP.md            ← Canonical macOS setup guide (current)
mac/configs/SETUP-full.md ← Extended macOS guide (macOS Sequoia)
linux/configs/script.sh ← Legacy monolithic script (older, kept for reference)
linux/configs/.zshrc.sh ← Zsh config template (appended to ~/.zshrc)
extras/repos.sh         ← Bulk git clone helper for related projects
mobile/                 ← Git submodule (separate repo)
```

## Key Conventions

### Canonical vs Legacy
- `linux/SETUP.md` and `mac/SETUP.md` are the **current** guides. `linux/configs/script.sh` is legacy.
- New additions belong in the respective `SETUP.md`, not in `script.sh`.
- `linux/configs/errors/`, `linux/configs/settings/`, `linux/configs/themes/` hold supplementary one-off fix scripts.

### Runtime Manager
- **Current standard:** `mise` (replaces nvm + pyenv). Use `mise use -g node@22.18`, `mise use -g python@3.10`, `mise use -g java@17`.
- **Legacy** (`script.sh`): nvm + pyenv — do not propagate these to new content.

### SSH Keys
- **Current standard:** ED25519 (`ssh-keygen -t ed25519`).
- **Legacy** (`script.sh`): RSA 4096 — do not propagate.

### Shell & Theme Stack
- Shell: Zsh + Oh My Zsh + Zinit
- Prompt: Starship with Catppuccin preset (`~/.config/starship.toml`)
- Zinit plugins: `zdharma/fast-syntax-highlighting`, `zsh-users/zsh-autosuggestions`, `zsh-users/zsh-completions`
- Fonts: FiraCode Nerd Font, JetBrains Mono Nerd Font

### Docker
- **Linux:** Docker Engine (official APT repo)
- **macOS:** OrbStack (`brew install --cask orbstack`)

### Zsh Config Pattern
Blocks added to `~/.zshrc` use section markers:
```bash
### >>> SECTION NAME <<<
...content...
### <<< FIM SECTION NAME >>>
```
Use `grep -q 'marker'` guards before appending to avoid duplicates (see `linux/SETUP.md` sections 5 and 11).

### React Native Aliases (in `.zshrc.sh`)
- `rn-clean` — removes Android build artifacts
- `rn-hard-reset` — removes build artifacts + node_modules
- `rn-build` — yarn + android + reset cache

### Submodule
`mobile/` is a git submodule. Clone with `git clone --recurse-submodules` or init separately with `git submodule update --init`.
