---
title: 还原win11右键菜单
# toc: true
categories:
  - 技巧
tags:
  - windows
# pic: /assets/blogcovers/还原win11右键菜单.webp
date: 2023-09-12 21:27:38
---

## 通过注册表修改

win+R 输入：`regedit`，打开注册表编辑器

定位到：`HKEY_CURRENT_USER\SOFTWARE\CLASSES\CLSID`

接着，右键点击`CLSID`键值，新建一个名为`{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}`的项

右键点击新创建的项，新建一个名为`InprocServer32`的项，按下回车键保存

最后选择新创建的项，然后双击右侧窗格中的默认条目，什么内容都不需要输入，按下回车键

保存注册表后，重启explorer.exe，即可看到右键菜单恢复成旧样式了

如果想要恢复成为Win11的设计，那么删掉`InprocServer32`的项就可以了