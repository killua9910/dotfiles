# sunjr's dotfiles

Hi, here is my dev setup!

### tmux

![tmux](./screenshot/tmux.png)

### neovim

```lua
-- use below 😄
vim.keymap.set("n", "i", function()
  return string.match(vim.api.nvim_get_current_line(), "%g") == nil and "cc" or "i"
end, { expr = true, noremap = true })

```

### screenshots

![demo1](./screenshot/demo1.png)
![demo2](./screenshot/demo2.png)
