---
name: audit-mac-setup
description: Use when asked to audit installed macOS programs, find undocumented tools, or suggest additions to mac.md setup guide. Triggers on: "check installed programs", "what's missing in mac.md", "audit my setup", "programs not documented".
---

# Audit Mac Setup

## Overview

Find installed apps/programs not yet documented in `mac.md`, show the list to the user, then add only the ones they choose.

## Steps

### 1. Collect installed programs

```bash
brew leaves | sort
brew list --cask | sort
```

Use `brew leaves` for formulae (excludes auto-installed deps). Use `brew list --cask` for all casks.

### 2. Parse mac.md

Extract the documented set from all `brew install` lines. Each line may install multiple packages — extract all tokens:

```bash
grep 'brew install' mac.md \
  | sed 's/brew install --cask//' \
  | sed 's/brew install//' \
  | tr ' ' '\n' \
  | grep -E '^[a-zA-Z0-9@/_.-]+$' \
  | sort -u
```

### 3. Diff

Subtract documented set from installed leaves/casks → undocumented list.

Skip low-level libs and build infra (see Skip List below).

### 4. Fetch descriptions for undocumented packages

```bash
brew info <pkg> [--cask] 2>/dev/null | head -2
```

Run in parallel for all undocumented packages to get name + one-line description.

### 5. Present list as plain text

Output a numbered list to the user:

```
Installed but not in mac.md:

Formulae:
  1. gh — GitHub command-line tool
  2. lazygit — Simple terminal UI for git commands
  ...

Casks:
  1. bitwarden — Desktop password and login vault
  2. spotify — Music streaming service
  ...

Reply with the numbers you want to add (e.g. "f1 f3 c2") or "all" or "none".
```

Use prefix `f` for formulae and `c` for casks so there's no ambiguity.

**WAIT for user reply before writing anything.**

### 6. Add selected programs to mac.md

- Append to the most relevant existing section, or create a new one if none fits
- Format: `brew install <pkg>` or `brew install --cask <pkg>`
- No inline comments

## Skip List (never show to user)

- Low-level libs: `libpng`, `openssl`, `pcre2`, `icu4c`, `cairo`, `pango`, `harfbuzz`, `freetype`, `fontconfig`, `glib`, `gobject-introspection`, `pixman`, `libx11`, `libxcb`, `libxau`, `libxdmcp`, `libxext`, `libxrender`, `libdatrie`, `libthai`, `xorgproto`, `graphite2`
- Compression/encoding: `xz`, `lz4`, `lzo`, `zstd`, `lame`, `opus`, `libvmaf`, `libvpx`, `svt-av1`, `x264`, `x265`, `dav1d`
- Build infra: `ca-certificates`, `pkgconf`, `gettext`, `krb5`, `mpdecimal`, `readline`, `sqlite`, `libyaml`
- Media infra: `sdl2`

## mac.md Location

`/Users/paulo.duarte/workspace/outros/linux-scripts/mac.md`
