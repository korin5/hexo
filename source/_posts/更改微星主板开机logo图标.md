---
title: 更改主板开机logo图标
date: 2023-01-19 22:56:43
toc: true
categories:
- 教程
tags: 
- PC
pic: '/assets/covers/2023-01-19.webp'
---

测试型号：微星 MAG B660M MORTAR WIFI DDR4 (迫击炮)

# 原理

通过ChangeLogo修改BIOS文件内的图标

刷入修改后的BIOS文件

# 下载原版BIOS文件

打开[微星支持中心](https://cn.msi.com/support/download)

搜索主板型号（比如B660M）

核对型号准确无误之后，点击左下角的Download（不要点击标题文字）

![](/assets/posts/2023-01-19/1.png)

多下载几个版本，个别版本可能无法更改

解压完后可以看到两个文件，一个是说明文件，另一个奇怪的文件就是BIOS本体

![](/assets/posts/2023-01-19/2.png)

# 修改BIOS文件

下载[ChangeLogo](https://pan.baidu.com/s/13raYA4GFvZyJGPRyZWHBtw?pwd=z0wb)

![界面是这样的](/assets/posts/2023-01-19/1675078328896.png)  

点击Load Image，加载BIOS文件（需要选择文件类型为All Files，不然找不到）

点击save logo，可以保存原版logo

为得到完美的布局，自定义图片的最大尺寸控制在800像素x600像素

点击Browse，加载自定义的图片

点击Replace Logo，开始修改

{% alertbox info "程序正常运行一点反应都没有，看着像卡死了一样，请耐心等待" %}

完成的时候，左下角会提示New logo is created，点击Save Image As保存新的BIOS文件

# 刷入BIOS文件

也可参考[官方操作说明](http://event.msi.com/mb/mb_bios_cn.pdf)

把BIOS文件放到U盘的根目录，部分高端主板支持无U盘安装（但为了保险，还请使用U盘，详见文末）

{% alertbox warning "注意：PE系统U盘不可以" %}

重启电脑，然后疯狂按delete键，直到进入BIOS系统

点击左下角的M-flash（如果你的面板是简易模式，M-flash也在左下角，按F7可以切换模式）

![](/assets/posts/2023-01-19/1675079885320.png)  

弹出的窗口选择yes，然后电脑会重启进入M-flash模式（如果重启没有进入M-flash模式一直黑屏，可以按Reset重启）

可以用鼠标（或方向键）找到自己改过的bios文件，点击（或Enter）

弹出的窗口选择yes，就开始刷入了

{% alertbox danger "这个时候千万不要断电" %}

刷入后，电脑会自动进行数次重启

最后，将直接进入windows系统

# 如果失败

不用惊慌，不会爆炸，都是小问题

如果只是图片大小不合适，那自定义图片参考原图尺寸再进行一遍即可

如果中途断电开不了机，其实也不是大问题

授人以渔：搜索关键词`BIOS烧录`进行学习

虽然我没作死过，但是网友比较厉害，以身试法

>“我在官方下载了一个最新的和我对应的主板BIOS，拷贝进U盘根目录，改了MSI.ROM。插进免CPU刷BIOS的插口，按了那个小圆键，小灯狂闪，我默默等了5分钟，自动重启，然后我就又能进入系统了。”
>来自：https://bbs.a9vg.com/thread-8755825-1-1.html