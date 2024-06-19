# sunjr's dotfiles

Hi, here is my dev setup!

### tmux

![tmux](./screenshot/tmux.png)

### neovim

- remove extras from config/lazy.lua
- you have to enable lazyvim extras with `:LazyExtras` command

```lua
-- use below 😄
vim.keymap.set("n", "i", function()
  return string.match(vim.api.nvim_get_current_line(), "%g") == nil and "cc" or "i"
end, { expr = true, noremap = true })

```

### screenshots

![demo5](./screenshot/demo5.jpeg)

![demo6](./screenshot/demo6.png)

> new fzf-lua so great!!!

![demo3](./screenshot/demo3.png)

> tmux-floax also great!!!

![demo4](./screenshot/demo4.png)

![demo1](./screenshot/demo1.png)

![demo2](./screenshot/demo2.png)
