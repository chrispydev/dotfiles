- Install neovim

```bash
   brew install --HEAD tree-sitter luajit neovim tmux
   # or use pacman
   sudo pacman -S luajit tree-sitter neovim tmux
```

- Install vim plug(packer)

```bash
   git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

- Install neovim-npm package and python package

```python
pip3 install --user neovim
```

```javascript
yarn global add neovim
```

- Install ccls compiler

```bash
sudo pacman -S ccls
```

- Install bash language server

```bash
npm i -g bash-language-server
```

- additional provider

```bash
sudo pacman -S fd
```

- for rust, install additiional setups

```bash
   sudo pacman -S rustup
   rustup component add rls rust-analysis rust-src
```
