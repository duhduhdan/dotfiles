# `dotfiles`

## Setup
Clone this repo to `$HOME` and make sure the following are all installed and configured.

---

### System

* [`homebrew`](https://brew.sh/)

* [`nvm`](https://github.com/nvm-sh/nvm#install--update-script)

* [`oh-my-zsh`](https://github.com/robbyrussell/oh-my-zsh#basic-installation)

* [`spaceship-prompt`](https://github.com/denysdovhan/spaceship-prompt#installing)
  - Symlink `.zshrc`:
  ```
  ln -s ~/dotfiles/zshrc ~/.zshrc
  ```

* [`ripgrep`](https://github.com/BurntSushi/ripgrep#installation)

* [`the_silver_searcher`](https://github.com/ggreer/the_silver_searcher#installing)

* [`fzf`](https://github.com/junegunn/fzf#installation)

* [`git`](https://git-scm.com/book/en/v1/Getting-Started-Installing-Git#Installing-on-Mac)

* [`neovim`](https://github.com/neovim/neovim/wiki/Installing-Neovim#macos--os-x)
  - Symlink nvim:
  ```
  ln -s ~/dotfiles/nvim ~/.config/nvim
  ```

  - Symlink nvim init:
  ```
  ln -s ~/dotfiles/nvim/init.vim ~/.local/share/nvim/init
  ```

* [`kitty terminal`](https://sw.kovidgoyal.net/kitty/#quickstart)
  - Symlink kitty config:
  ```
  ln -s ~/dotfiles/kitty ~/.config/kitty
  ```

### `neovim`
* [`neovim` with `python3` support](https://github.com/deoplete-plugins/deoplete-jedi/wiki/Setting-up-Python-for-Neovim)

* [`vim-plug` for `neovim`](https://github.com/junegunn/vim-plug#neovim)

### `coc-nvim`
A list of every extension can be found [here](https://www.npmjs.com/search?q=keywords%3Acoc.nvim)
- `:CocInstall coc-tsserver`
- `:CocInstall coc-tslint`

---

#### TODO
- [ ] Stop being lazy and automate this with a `install.sh` (to start being lazy)
