---
title: ArchLinux_gui安装指南
date: 2023-01-20 21:21:00
toc: true
categories:
- 教程
tags: 
- PC
- Linux
pic: '/assets/covers/2023-01-20.webp'
---

[安装指南官方文档](https://wiki.archlinux.org/title/Installation_guide)

[参考-米V米](https://www.mivm.cn/archlinux-installation-guide-simple)

# 准备工作

## 下载ArchLinux_gui

[下载地址](https://mirrors.tuna.tsinghua.edu.cn/osdn/arch-linux-gui/)

{% alertbox warning "不要下载pure版本，pure是纯净版，不自带中文字体，会出现中文乱码" %}

测试版本：archlinux-gui-plasma-2022.07-x86_64.iso

## 制作启动U盘

[下载balenaEtcher](https://www.balena.io/etcher/)

Flash from file选择ArchLinux_gui的iso文件

Select target选择目标U盘

## BIOS设置

进入BIOS

关闭安全启动：SecureBoot 设置为 Disabled（需要设置SecureBoot密码才可更改）

将硬盘设置为AHCI模式：SATA Mode 设置为 AHCI Mode

调整优先级，重启进入U盘系统

# 安装ArchLinux

进入U盘的flash系统后，先连wifi

开始菜单中，打开Install Arch Linux

选择中文语言，接下来就是傻瓜式操作的安装过程，最后重启进入ArchLinux系统

<!-- 如果出现中文乱码的话，需要安装中文字体：

1. 先编辑镜像列表：`sudo nano /etc/pacman.d/mirrorlist`
2. 在顶端添加清华镜像：`Server = https://mirrors.tuna.tsinghua.edu.cn/archlinux/$repo/os/$arch`
3. 安装中文字体：`sudo pacman -Syu && sudo pacman -S ttf-dejavu wqy-zenhei wqy-microhei ttf-monaco` -->

# 配置ArchLinux

## pacman配置

pacman是一个软件安装器，具体使用说明可以参考[官方文档](https://wiki.archlinux.org/title/Pacman)

编辑pacman镜像列表：`nano /etc/pacman.d/mirrorlist`

在最顶端添加：
```
Server = https://mirrors.tuna.tsinghua.edu.cn/archlinux/$repo/os/$arch
```

编辑pacman配置文件：`nano /etc/pacman.conf`

在最底端添加：
```
#中文社区仓库
[archlinuxcn]
Server = https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/$arch
```

如果要启用multilib仓库，取消掉pacman.conf文件中`[multilib]`段落的注释

获取archlinuxcn源密钥：`sudo pacman -S archlinuxcn-keyring`

滚动更新：`sudo pacman -Syu`一个命令即可升级整个系统，花费时间取决于系统有多老。这个命令还会同步本地软件仓库并升级系统的软件包

如果要安装aur的包，可以使用yay，安装yay：`sudo pacman -S yay`

## deb包转arch包

[参考-linux中国](https://linux.cn/article-9769-1.html)

安装debtap：`yay -S debtap`

编辑镜像配置：`nano /usr/bin/debtap`

把 `http://ftp.debian.org/debian/dists` 替换为：
```
https://mirrors.ustc.edu.cn/debian/dists
```

把 `http://archive.ubuntu.com/ubuntu/dists` 替换为：
```
https://mirrors.ustc.edu.cn/ubuntu/dists
```

更新数据库（至少需要运行一次）：`sudo debtap -u`

使用方法：`sudo debtap xxxx.deb`

转换完成后，安装本地包：`sudo pacman -U xxx.tar.xz`

## 中文输入法

[fcitx5官方文档](https://wiki.archlinux.org/title/Fcitx5)

安装软件包组：`sudo pacman -S fcitx5-im`

安装：`sudo pacman -S fcitx5-chinese-addons`

# 其它

## SSH远程连接

执行`ip -brief address`可以查看IP地址列表

若无法连接，务必确保系统环境和 SSH 客户端处于同一局域网

## 自动获取pacman镜像源

Reflector是一个Python编写的脚本，会自动从 `https://archlinux.org/mirrors/status/` 上获取镜像地址，可以通过参数筛选出，自己需要的镜像地址，具体参考[官方文档](https://wiki.archlinux.org/title/Reflector)

安装Reflector：`sudo pacman -S reflector`

配置命令：

{% alertbox warning "下述命令会覆盖文件，操作前请备份mirrorlist" %}

`sudo reflector --verbose -c China --latest 12 --sort rate --threads 100 --save /etc/pacman.d/mirrorlist`

意思是：选择在最近同步的，并且是位于中国的12个镜像，然后根据下载速度进行排序，最后将结果覆写到mirrorlist文件

## 本地化

设置时区：`ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime`

同步硬件时钟：`hwclock --systohc`

执行`nano /etc/locale.gen`编辑本地化配置文件，取消以下行段的注释

```
#en_US.UTF-8 UTF-8
#zh_CN.UTF-8 UTF-8
#zh_TW.UTF-8 UTF-8
```

设置默认本地化环境：`echo LANG=en_US.UTF-8 > /etc/locale.conf`（为了确保兼容性，默认本地化环境最好是英语）

## 还原flash系统U盘

把U盘插入windows电脑

右键计算机，进入磁盘管理工具，确定U盘的索引名称

进入cmd，输入`diskpart`

输入`list disk`查看所有磁盘，`磁盘`右边的数字就是索引号

输入`select disk 索引号`

**确认无误之后**，输入`clean`来清除

快捷键win+s搜索`创建并格式化硬盘分区`进入磁盘管理工具

给U盘新建简单卷格式化即可