---
title: 用IIS搭建FTP服务器
date: 2023-01-30 17:19:59
toc: true
tags:
  - windows
categories:
  - 教程
pic: '/assets/blogcovers/用IIS搭建FTP服务器.webp'
---

推荐使用FileZilla搭建FTP服务器，跳转到[用FileZilla搭建FTP服务器](/2023/用FileZilla搭建FTP服务器/index.html)

# 目的

通过FTP，让电脑和手机之间能够无线传输数据

# 开启IIS功能

快捷键win+s搜索`控制面板`打开

点击程序，点击启用或关闭windows功能

![](/assets/blogimages/2023/%E7%94%A8IIS%E6%90%AD%E5%BB%BAFTP%E6%9C%8D%E5%8A%A1%E5%99%A8/1694356658119.png)  

找到Internet Information Services，勾选FTP服务和IIS管理控制台

![](/assets/blogimages/2023/%E7%94%A8IIS%E6%90%AD%E5%BB%BAFTP%E6%9C%8D%E5%8A%A1%E5%99%A8/1694356699776.png)  


# 建立FTP站点

快捷键win+s搜索`IIS`打开

右键网站，点击添加FTP站点

![](/assets/blogimages/2023/%E7%94%A8IIS%E6%90%AD%E5%BB%BAFTP%E6%9C%8D%E5%8A%A1%E5%99%A8/1694356729595.png)  

取名，选择要共享的目录，下一页

因为只在自己的局域网内使用，分配ip地址（默认即可），写个随便一点的端口号（比如114或者514），选择无SSL，下一页

身份验证勾上匿名，允许访问选择所有用户，勾选读取和写入，完成
应用通过防火墙

![](/assets/blogimages/2023/%E7%94%A8IIS%E6%90%AD%E5%BB%BAFTP%E6%9C%8D%E5%8A%A1%E5%99%A8/1694356746265.png)  

{% alertbox info 
请记住你的ip地址和端口号，连接的时候要用
%}

# 通过防火墙

快捷键win+s搜索`控制面板`打开

点击系统和安全，点击允许应用通过防火墙

![](/assets/blogimages/2023/%E7%94%A8IIS%E6%90%AD%E5%BB%BAFTP%E6%9C%8D%E5%8A%A1%E5%99%A8/1694356885611.png)  


点击右上角的更改设置，点击允许其他应用，在`C:\Windows\System32\inetsrv\`中找到InetMgr.exe添加进来

在列表内找到IIS Manager，在专用一栏勾选

![](/assets/blogimages/2023/%E7%94%A8IIS%E6%90%AD%E5%BB%BAFTP%E6%9C%8D%E5%8A%A1%E5%99%A8/1694356900925.png)  


# 连接到FTP

手机上可以用的文件浏览器不少，我现在用的是[ES文件浏览器](https://www.coolapk.com/apk/com.estrongs.android.pop)，以前用的是[文件管理器](https://play.google.com/store/apps/details?id=com.alphainventor.filemanager)，这两个我都很喜欢

ES文件浏览器：在我的网络中扫描即可，选中，连接

文件管理器：点击远程存储，添加，选择FTP，输入ip地址和端口号，勾选匿名，连接

连接成功后就可以愉快地传输文件了~