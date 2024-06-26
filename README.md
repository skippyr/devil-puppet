<p align="center">
	<img alt="" src="assets/ornament.webp" />
</p>
<h1 align="center">≥v≥v&ensp;devil-puppet&ensp;≥v≥v</h1>
<p align="center">
	<img alt="" src="https://img.shields.io/github/license/skippyr/devil-puppet?style=plastic&label=%E2%89%A5%20license&labelColor=%2324130e&color=%23b8150d" />
	&nbsp;
	<img alt="" src="https://img.shields.io/github/v/tag/skippyr/devil-puppet?style=plastic&label=%E2%89%A5%20tag&labelColor=%2324130e&color=%23b8150d" />
	&nbsp;
	<img alt="" src="https://img.shields.io/github/commit-activity/t/skippyr/devil-puppet?style=plastic&label=%E2%89%A5%20commits&labelColor=%2324130e&color=%23b8150d" />
	&nbsp;
	<img alt="" src="https://img.shields.io/github/stars/skippyr/devil-puppet?style=plastic&label=%E2%89%A5%20stars&labelColor=%2324130e&color=%23b8150d" />
</p>

## ❡ About

An evil looking theme for the `zsh` shell for Linux that is decorated by a pentagram.

<p align="center">
	<img alt="" src="assets/preview.webp" />
</p>
<p align="center"><sup><strong>Caption:</strong> a preview of devil-puppet applied on <code>zsh</code>. The terminal theme used is <a href="https://github.com/skippyr/flamerial">Flamerial</a> and font is <a href="https://www.nerdfonts.com/font-downloads">Fira Mono (Nerd Fonts patched)</a>.</sup></p>

### Features

It displays:

- Your host and user names.
- The name of the active Python virtual environment, if you have sourced one.
- The path of the directory you are in with parent directory names abbreviated by their initials.
- The active branch, when inside of a `git` repository.
- The exit code of failed commands.

## ❡ Install

### Dependencies

The following dependencies must be installed before installing it:

- **git**: it will be used to clone this repository.
- **Noto Sans**, [**Nerd Font Symbols**](https://www.nerdfonts.com/font-downloads): these fonts provide the pretty symbols used by the theme.

### Procedures

#### Manual Procedures

If you want to install this theme without a plugin manager or for a specific framework, using a terminal, follow these steps:

- Clone this repository using `git`:

```sh
git clone --depth 1 "~/.config/zsh/themes/devil-puppet";
```

- Source the file `devil-puppet.zsh-theme` that is inside of the repository you just cloned in your `~/.zshrc` configuration file:

```zsh
source "~/.config/zsh/themes/devil-puppet/devil-puppet.zsh-theme";
```

- Reopen `zsh`.

#### Procedures For OhMyZSH

If you want to install and use this theme with the [`ohmyzsh`](https://github.com/ohmyzsh/ohmyzsh) framework, using a terminal, follow these steps:

- Clone this repository using `git`:

```sh
git clone --depth 1 \
    "https://github.com/skippyr/devil-puppet" \
    "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/devil-puppet";
```

- Apply the theme in your `~/.zshrc` configuration file by setting the `ZSH_THEME` variable:

```zsh
ZSH_THEME="devil-puppet/devil-puppet";
```

- Reopen `zsh`.

#### Procedures For Antidote

If you want to install this theme with the [`antidote`](https://github.com/mattmc3/antidote) plugin manager, using a terminal, follow these steps:

- Add this repository to your plugins file, usually `~/.zsh_plugins.txt`.

```
skippyr/devil-puppet
```

- Use `antidote` to load your plugins.

```zsh
antidote load "~/.zsh_plugins.txt";
```

## ❡ Help

If you need help related to this project, open a new issue in its [issues pages](https://github.com/skippyr/devil-puppet/issues) or send me an [e-mail](mailto:skippyr.developer@gmail.com) describing what is going on.

## ❡ Contributing

This project is open to review and possibly accept contributions, specially fixes and suggestions. If you are interested, send your contribution to its [pull requests page](https://github.com/skippyr/devil-puppet/pulls) or to my [e-mail](mailto:skippyr.developer@gmail.com).

By contributing to this project, you agree to license your work under the same license that the project uses.

## ❡ License

This is free software licensed under the BSD-3-Clause License that comes WITH NO WARRANTY. Refer to the `LICENSE` file that comes in its source code for license and copyright details.

&ensp;
<p align="center"><sup><strong>≥v≥v&ensp;Here Be Dragons!&ensp;≥v≥</strong><br />Made with love by skippyr <3</sup></p>
