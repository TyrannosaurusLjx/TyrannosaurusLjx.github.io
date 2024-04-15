# Karabiner-Elements

[官方网站](https://karabiner-elements.pqrs.org/)

[配置文档](https://karabiner-elements.pqrs.org/docs/manual/configuration/)

[如何对具体的软件做更改](https://karabiner-elements.pqrs.org/docs/json/complex-modifications-manipulator-definition/conditions/frontmost-application/)

## 使用方法
- 使用Karabiner-EventViewer查看按键的key code和modifiers
  - ![alt text](img/image-1.png)
- 使用Karabiner-Elements修改按键映射
  - ![alt text](img/image-2.png)

## [个人配置](https://github.com/TyrannosaurusLjx/Configuration/tree/main/Karabiner-Elements)
- 使用 left_command+hjkl 在微信,iterm2 中代替方向键
- 在钉钉中使用 left_command+jk 代替command+方向键(钉钉需要 command+方向键才能移动)
- 定义hyper = left_command+left_option+left_control+left_shift
- 使用终端命令切换软件,shell 命令 open -a 'appname.app'可以打开对应的软件,用 hyper+appname 映射到这个命令实现快捷操作
- 结合 raycast 脚本实现搜索复制内容(right_command+f)
  - ![alt text](img/image-3.png)  



