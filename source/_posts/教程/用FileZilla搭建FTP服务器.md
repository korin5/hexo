---
title: 用FileZilla搭建FTP服务器
toc: true
categories:
  - 教程
tags:
  - windows
pic: /assets/blogcovers/用FileZilla搭建FTP服务器.webp
date: 2023-09-13 15:57:08
---

[参考-知乎教程](https://zhuanlan.zhihu.com/p/428058878)

# 安装

FileZilla服务端下载：<https://www.filezilla.cn/download/server>

后文以这个版本为例：

![](/assets/blogimages/2023/%E7%94%A8FileZilla%E6%90%AD%E5%BB%BAFTP%E6%9C%8D%E5%8A%A1%E5%99%A8/1694592147620.png)  

安装过程默认下一步即可，默认的监听端口会设置为14147

![](/assets/blogimages/2023/%E7%94%A8FileZilla%E6%90%AD%E5%BB%BAFTP%E6%9C%8D%E5%8A%A1%E5%99%A8/1694592257747.png)  

# FileZilla配置

打开程序，输入监听端口，输入密码，然后确定

![](/assets/blogimages/2023/%E7%94%A8FileZilla%E6%90%AD%E5%BB%BAFTP%E6%9C%8D%E5%8A%A1%E5%99%A8/1694592439813.png)  

点击编辑-用户

![](/assets/blogimages/2023/%E7%94%A8FileZilla%E6%90%AD%E5%BB%BAFTP%E6%9C%8D%E5%8A%A1%E5%99%A8/1694592546080.png)  

添加用户

![](/assets/blogimages/2023/%E7%94%A8FileZilla%E6%90%AD%E5%BB%BAFTP%E6%9C%8D%E5%8A%A1%E5%99%A8/1694592593904.png)  

添加共享文件夹

![](/assets/blogimages/2023/%E7%94%A8FileZilla%E6%90%AD%E5%BB%BAFTP%E6%9C%8D%E5%8A%A1%E5%99%A8/1694592650629.png)  

# 防火墙配置

## 允许21端口

配置入站规则

![](/assets/blogimages/2023/%E7%94%A8FileZilla%E6%90%AD%E5%BB%BAFTP%E6%9C%8D%E5%8A%A1%E5%99%A8/1694592928652.png)  

![](/assets/blogimages/2023/%E7%94%A8FileZilla%E6%90%AD%E5%BB%BAFTP%E6%9C%8D%E5%8A%A1%E5%99%A8/1694592937959.png)  

然后一直点下一步即可

## 允许通过防火墙（关键）

![](/assets/blogimages/2023/%E7%94%A8FileZilla%E6%90%AD%E5%BB%BAFTP%E6%9C%8D%E5%8A%A1%E5%99%A8/1694593073222.png)  

![](/assets/blogimages/2023/%E7%94%A8FileZilla%E6%90%AD%E5%BB%BAFTP%E6%9C%8D%E5%8A%A1%E5%99%A8/1694593095785.png)  

把下面两个都添加进去

![](/assets/blogimages/2023/%E7%94%A8FileZilla%E6%90%AD%E5%BB%BAFTP%E6%9C%8D%E5%8A%A1%E5%99%A8/1694593129940.png)  

# 连接到FTP

手机上可以用的文件浏览器不少，我现在用的是[ES文件浏览器](https://www.coolapk.com/apk/com.estrongs.android.pop)，以前用的是[文件管理器](https://play.google.com/store/apps/details?id=com.alphainventor.filemanager)，这两个我都很喜欢

ES文件浏览器：在我的网络中扫描即可，选中，连接

文件管理器：点击远程存储，添加，选择FTP，输入ip地址和端口号，勾选匿名，连接

连接成功后就可以愉快地传输文件了~