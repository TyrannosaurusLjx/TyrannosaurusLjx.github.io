---
title: "Learning record"
author: ljx
date: 2024-10-14
categories:
  - essays
tags:
  - Diary
---

# Neovide 渲染数学公式

在使用 [render-markdown](https://github.com/MeanderingProgrammer/render-markdown.nvim) 渲染 markdown 的时候,只有数学公式不能渲染

在 shell 中打开 nvim可以调用 latex2text,但是在 neovide 中使用 `!latex2text` 没法调用

解决方案在 [issue](https://github.com/neovide/neovide/issues/2670) ,原来 zsh 的环境变量不能放在 ~/.zshrc中, 在zshenv中加入

```shell
# anaconde3
export PATH="/opt/anaconda3/bin:$PATH"
```

解决了这个问题



