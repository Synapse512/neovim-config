### my neovim configuration
* features fuzzy finding, file explorer + tabs, workspaces, and dedicated luau support
<img width="720" height="454.5" alt="image" src="https://github.com/user-attachments/assets/d17d6822-289e-441d-8452-156c757d758a" />



## General Keymaps

| Keymap | Description |
| :--- | :--- |
| `<C-h>` | Move to left window |
| `<C-j>` | Move to lower window |
| `<C-k>` | Move to upper window |
| `<C-l>` | Move to right window |
| `<S-Right>` | Next Tab |
| `<S-Left>` | Previous Tab |

## Plugin Keymaps
* Keymaps have plugin name at end to make fzf-keymap finder easy to use

| Plugin | Keymap | Description |
| :--- | :--- | :--- |
| `bufferline.nvim` | `<S-h>` | Go to previous buffer (bufferline) |
| `bufferline.nvim` | `<S-l>` | Go to next buffer (bufferline) |
| `bufferline.nvim` | `<S-x>` | Close tab (bufferline) |
| `fzf-lua` | `<leader>ff` | search files in directory (fzf) |
| `fzf-lua` | `<leader>fc` | search C: (fzf) |
| `fzf-lua` | `<leader>lg` | live grep (fzf) |
| `fzf-lua` | `<leader>fb` | open buffers (fzf) |
| `fzf-lua` | `<leader>fl` | keymaps (fzf) |
| `nvim-cmp` | `<C-j>` / `<Tab>` | Select next item |
| `nvim-cmp` | `<C-k>` / `<S-Tab>` | Select previous item |
| `nvim-cmp` | `<CR>` | Confirm completion selection |
| `nvim-tree` | `<C-n>` | Toggle file explorer (nvim-tree) |
| `nvim-tree` | `<leader>e` | Focus file explorer (nvim-tree) |
| `workspaces.nvim` | `<leader>aw` | Add workspace (workspaces) |
| `workspaces.nvim` | `<leader>ow` | Open workspace (workspaces) |
| `workspaces.nvim` | `<leader>rw` | Remove workspace (workspaces) |
| `diffview.nvim` | `<leader>gd` | Open Git Diff (diff-view) |
| `diffview.nvim` | `<leader>gD` | Close Git Diff (diff-view) |
| `diffview.nvim` | `<leader>gh` | Current File History (diff-view) |

## Terminal Shortcuts

| Shortcut | Description |
| :--- | :--- |
| `Ctrl + Shift + T` | Create terminal tab |
| `Ctrl + Shift + W` | Close terminal tab |
| `Ctrl + Tab` | Switch terminal tab |
| `Ctrl + Shift + Tab` | Switch to previous tab |
| `Ctrl + Alt + [number]` | Jump to specific tab |
| `Ctrl + Shift + D` | Split pane side by side |
| `Alt + Shift + D` | Split pane horizontally |
