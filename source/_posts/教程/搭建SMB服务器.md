---
title: 搭建SMB服务器
date: 2023/9/11
toc: true
tags:
 - windows
categories:
 - 教程
# pic: '/assets/blogcovers/搭建SMB服务器.webp'
---

更建议使用FTP，跳转到[用IIS搭建FTP服务器](/2023/用IIS搭建FTP服务器/index.html)

# 配置服务
在本地机上以Windows10举例 ：控制面板 --> 程序 --> 程序和功能 --> 启用或关闭Windows功能 --> SMB 1.0/cifs file sharing support

勾选`SMB 1.0/CIFS Client`和`SMB 1.0/CIFS Server`

![](/assets/blogimages/2023/%E6%90%AD%E5%BB%BASMB%E6%9C%8D%E5%8A%A1%E5%99%A8/1694398008085.png)  


# 验证服务
开启之后来验证一下SMB是否正确开启：在PowerShell输入以下命令查看服务状态
```
Get-SmbServerConfiguration | Select EnableSMB1Protocol, EnableSMB2Protocol
```
如图所示：

![](/assets/blogimages/2023/%E6%90%AD%E5%BB%BASMB%E6%9C%8D%E5%8A%A1%E5%99%A8/1694398014789.png)  


# 共享文件
在D盘新建一个你要共享的文件夹，比如`D:\Test`，右键菜单 --> 授予访问权限 --> 特定用户选择一个用户进行授权，如图所示：

![](/assets/blogimages/2023/%E6%90%AD%E5%BB%BASMB%E6%9C%8D%E5%8A%A1%E5%99%A8/1694398028912.png)  


授权给用户之后会提示你的文件夹已共享，在DOS窗口输入弹窗提示的共享连接`\\DESKTOP-D5DVINV\Test`即可进入共享文件夹，右击共享文件夹还可以设置访问密码，更改访问用户等等。

![](/assets/blogimages/2023/%E6%90%AD%E5%BB%BASMB%E6%9C%8D%E5%8A%A1%E5%99%A8/1694398035255.png)  

