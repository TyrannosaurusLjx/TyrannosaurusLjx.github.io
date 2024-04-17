# Astronvim

[官网](https://docs.astronvim.com/mappings)

- 使用发行版,这样不用自己解决插件的兼容性等等

- Configuration
  - Leader key: `Space`
  - 因为使用 karabiner 在 terminal 中映射了 `command + hjkl` 为移动,所以不用再单独设置移动按键
  - Force Write: `Ctrl + s` $\to$ `command + s` 
  - New file: `Leader + n` $\to$ `command + n`
  - Close buffer: `Leader + c` $\to$ `Leader + w`
  - Next tab: `]t` $\to$ `Leader + }`
  - Previous tab: `[t` $\to$ `Leader + {`
  - Comment: `Leader + /` $\to$ `Leader + /`
  - Previous buffer: `[b` $\to$ `Leader + [`
  - Next buffer: `]b` $\to$ `Leader + ]`
  - NeoTree toggle: `Leader + e` $\to$ `Leader + e`
  - NeoTree focus: `Leader + o` $\to$ `Leader + E`
  - Session Save : `Leader + Ss` $\to$ `Leader + ss`
  - Session Delete : `Leader + Sd` $\to$ `Leader + sd`
  - Session Search : `Leader + Sf` $\to$ `Leader + sf`
  - Add book mark : `command + m`
  - Add jump to next mark : `command + n`
  - Add jump to previous mark : `command + N`
  - Add `<f8>` to run py, ect and preview markdown
  - 
- Usage
  - Navigation
    - Horizontal Split: `\`
    - Vertical Split: `|`
    - Navigate to buffer tab with interactive picker: `Leader + bb`
    - Open a buffer tab in a new horizontal split with interactive picker : `Leader + b\`
    - Open a buffer tab in a new vertical split with interactive picker: `Leader + b|`
  - Complete
    - Select completion : `Enter`
    - Next snippet location : `Tab`
  - NeoTree
    - Neotree toggle : `Command + e`
    - Neotree focus : `Command + E`
  - Home
    - Dashboard : `Leader + h`
  - Session
    - Save : `Leader + ss`
    - Delete : `Leader + sd`
    - Search : `Leader + sf`
  - Lsp
    - Declaration : `gD`
    - Definition : `gd`
  - Telescope
    - Find mark : `Leader + f'`
    - Find files : `Leader + ff`
    - Find old files : `Leader + fo`
  - Terminal
    - Floating terminal : `Leader + tf` or `<f7>`
    - Horizontal terminal : `Leader + th`
    - Vertical terminal : `Leader + tv`
    - Open toggle python terminal : `Leader + tp`


- keymap reference
```vim
<S-…>		shift-key			*shift* *<S-*
<C-…>		control-key			*control* *ctrl* *<C-*
<M-…>		alt-key or meta-key		*META* *ALT* *<M-*
<A-…>		same as <M-…>			*<A-*
<T-…>		meta-key when it's not alt	*<T-*
<D-…>		command-key or "super" key	*<D-*
```

谁懂,在 terminal+vim 环境下, `command` 无法被识别

反正 command 和 space 隔得近,将就着用先

