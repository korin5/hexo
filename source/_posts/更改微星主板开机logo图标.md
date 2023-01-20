---
title: 更改微星主板开机logo图标
date: 2023-01-19 22:56:43
categories:
- 硬件
tags: 
- BIOS
- 微星
- 教程
index_img: /img/article/2023-01-19/index_img.jpg
banner_img: /img/article/2023-01-19/index_img.jpg
---

# 原理

通过 ChangeLogo 程序修改 BIOS 镜像文件内的开机 logo 图标

再刷入修改后的 BIOS 系统

> 测试主板型号：MAG B660M MORTAR WIFI DDR4 (迫击炮)

# 详细步骤

## 1.下载BIOS镜像

打开微星的[下载站点](https://cn.msi.com/support/download)

直接输入主板型号，搜索

核对型号准确无误之后，点击左下角的 Download

![](/img/article/2023-01-19/1.png)

点击 BIOS 选项卡，点击下方的下载（多下载几个，有个别版本可能无法更改）

解压完后可以看到两个文件，一个是镜像文件本体，另一个是文本文件

![](/img/article/2023-01-19/2.png)

## 2.下载ChangeLogo程序

[点击下载](https://pan.baidu.com/s/16FtyhzEaRfBggW-O0Kvy9A?pwd=cdft)

![](/img/article/2023-01-19/3.png)

## 3.修改BIOS镜像文件

如果是64位系统，就打开 ChangeLogo64.exe

点击Load Image，加载 BIOS 镜像

![](/img/article/2023-01-19/4.png)

点击 save logo，自定义logo 的大小参考原版 logo 的图片大小

![](/img/article/2023-01-19/5.png)

点击 Browse 加载自定义的图片

![](/img/article/2023-01-19/6.png)

点击 Replace Logo 重置 logo

![](/img/article/2023-01-19/7.png)

> 这个时候，你可能会认为你卡了，其实程序正在制作新的bios镜像，但是没有一点反应

完成后会提示 New logo is created，点击 Save Image As 保存新的镜像

![](/img/article/2023-01-19/8.png)

![](/img/article/2023-01-19/9.png)

![](/img/article/2023-01-19/10.png)

## 4.刷入BIOS镜像

重启进入 BIOS

> 也就是点完按下开机键后，疯狂按 delete 键，直到进入 BIOS 系统

然后点击M-Flash进入flash模式

![](/img/article/2023-01-19/11.jpg)

电脑会进行重启，然后再进入 flash 模式

第三个就是C盘的文件目录了，前面的恢复分区不去管它

![](/img/article/2023-01-19/12.jpg)

找到自己改好之后的bios镜像文件，打开

![](/img/article/2023-01-19/13.jpg)

随后，电脑会进行数次重启

完成之后，会直接进入 windows 系统