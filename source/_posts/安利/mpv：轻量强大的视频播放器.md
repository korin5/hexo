---
title: mpv：轻量强大的视频播放器
toc: true
categories:
  - 安利
tags:
  - windows
  - 应用程序
# pic: /assets/blogcovers/mpv：轻量强大的视频播放器.webp
date: 2023-09-12 21:29:44
---

[入门-知乎](https://zhuanlan.zhihu.com/p/623849465) 
[中文文档](https://hooke007.github.io/index.html)

# 快速下载

进入官网安装页：<https://mpv.io/installation/>

![](/assets/blogimages/2023/mpv%EF%BC%9A%E8%BD%BB%E9%87%8F%E5%BC%BA%E5%A4%A7%E7%9A%84%E8%A7%86%E9%A2%91%E6%92%AD%E6%94%BE%E5%99%A8/1694525545288.png)  

![](/assets/blogimages/2023/mpv%EF%BC%9A%E8%BD%BB%E9%87%8F%E5%BC%BA%E5%A4%A7%E7%9A%84%E8%A7%86%E9%A2%91%E6%92%AD%E6%94%BE%E5%99%A8/1694525554904.png)  

![](/assets/blogimages/2023/mpv%EF%BC%9A%E8%BD%BB%E9%87%8F%E5%BC%BA%E5%A4%A7%E7%9A%84%E8%A7%86%E9%A2%91%E6%92%AD%E6%94%BE%E5%99%A8/1694525561676.png)  


# 快速安装

进入`installer` 目录，管理员身份运行`mpv-install.bat`来安装，并关联文件类型

# 快速使用

双击全屏，滚轮音量

# 快速配置

主配置：创建`D:\Program Files\mpv\portable_config\mpv.conf`
快捷键：创建`D:\Program Files\mpv\portable_config\input.conf`

详细配置方法参考[中文文档](https://hooke007.github.io/official_man/mpv.html#id16)

## 我的mpv.conf配置
```
no-border
volume=100
volume-max=120
geometry=60%
loop-playlist=inf
```

## mpv.conf常用配置

出处：<https://www.bilibili.com/read/cv13479755/>
```
##解码/渲染设置##

#视频输出驱动，Windows可选gpu/gpu-next/direct3d等，gpu最成熟稳定，gpu-next为实验性，direct3d只在为兼容老旧系统硬件时使用
vo=gpu
#设置硬解api，auto/auto-copy/no 对应 自动/自动-拷回内存/软解
hwdec=auto
#渲染使用的api，可选auto/d3d11/opengl/vulkan
gpu-api=auto
#尝试使用硬解的格式(默认h264,vc1,hevc,vp8,vp9,av1；all是特殊值指全部格式)
#hwdec-codecs=all
#gpu-api=d3d11时（win默认api）多GPU平台指定使用的GPU，GPU名称参考设备管理器。此选项根据首字符串识别，如果不是同一家的GPU则无需输入完整名称。若使用Vulkan则为vulkan-device=
#d3d11-adapter=AMD
#d3d11-adapter=Intel
#d3d11-adapter=NVIDIA
#d3d11va零拷贝模式，可降低gpu 3D engine占用
#d3d11va-zero-copy=yes

##缓存设置##

#开启缓存
cache=yes
#最大缓存大小（KiB或MiB）
demuxer-max-bytes=64MiB
#用内存而不是磁盘缓存
cache-on-disk=no
#缓存时间
#cache-secs=8

##播放状态记录##

#退出时记住播放状态（包括是否暂停、音量、播放速度、位置等）
save-position-on-quit
#播放状态保存位置
#watch-later-directory=D:\Cache\watch_later
#不记录是否暂停（除了pause同理可写fullscreen,mute,speed,ontop等参数）
watch-later-options-remove=pause
#记录播放状态时忽略文件路径（便于备份/共享，但会影响同名文件区分）
#ignore-path-in-watch-later-config

##窗口设置##

#贴边吸附（限windows平台）
snap-window=yes
#高分屏窗口缩放
#hidpi-window-scale=no
#无边框
#border=no
#置顶
ontop=yes
#全屏
#fullscreen=yes
#窗口保持视频比例
#keepaspect-window=no
#播完后保持打开（yes|no|always）
#keep-open=no
#将窗口缩放窗口模式下至大、至小占屏幕的百分比
#autofit-larger=90%x90%
#autofit-smaller=30%x30%
#设置默认打开的窗口大小、位置(下例是1280x720、屏幕左下角）
#geometry=1280x720+100%+100%

##OSD设置##

#关闭屏上信息条显示
#osd-bar=no
#osd-bar宽度[1,100],屏幕宽度的百分比
osd-bar-w=100
#osd-bar高度[0.1,50]屏幕高度的百分比
osd-bar-h=0.4
#位置[-1,1]x为左到右，y为上到下
osd-bar-align-y=1
#OSD颜色，RGB16进制表示
osd-color="#7FFFD4"
#OSD信息位置、字体大小、边框大小(左中右left/center/right,上中下top/center/buttom)
osd-align-x=left
osd-align-y=top
osd-font-size=22
osd-border-size=2
#设置OSD文本信息的持续时间（毫秒）
osd-duration=2000
#OSD随窗口大小缩放
osd-scale-by-window=no

##视频/音频/字幕/截图设置##

#读取杜比视界元数据(需要将vo=gpu改为实验性的vo=gpu-next)
#vf=format:dolbyvision=yes
#色彩管理
#icc-profile-auto=yes
#视频同步
#video-sync=display-resample
#interpolation=yes
#变速播放时的音调修正
audio-pitch-correction=yes
#音调修正的不静音最大倍速
#af=scaletempo2=max-speed=4
#自动加载外部字幕文件方式。（fuzzy加载同文件夹含有视频文件名的字幕文件）
sub-auto=fuzzy
#自动加载含有视频文件名的音频文件
#audio-file-auto=fuzzy
#字体大小，此值是以高度为720的屏幕为比例，更大或更小的屏幕会缩放
sub-font-size=44
#未指定样式的字幕字体
sub-font=sans-serif
#未指定样式的字幕边框
sub-border-size=2
#强制外挂ass字幕可使用黑边
sub-ass-force-margins=yes
#指定优先使用音轨（使用ISO-639语言代码，优先级按序递减）
alang=zh,chi,chs,sc,zh-hans,en,eng
#指定优先使用字幕轨（同上）
slang=zh,chi,chs,sc,zh-hans,en,eng
#列表播放循环方式，N|inf|no，循环N次/一直循环/不循环
loop-playlist=inf
#启动默认音量
volume=90
#程序最大音量[100,1000]
volume-max=100
#截屏文件格式（可选：jpg、jpeg、png、webp、jxl）
screenshot-format=jpg
#截屏文件保存路径
#screenshot-directory=C:\Image

##杂项##

#禁用内置快捷键方案，builtin与default相比不影响脚本的预设快捷键
no-input-builtin-bindings
#关闭内置屏上控制On Screen Controller(OSC)
#osc=no
#输出日志到桌面
#log-file = "~~desktop/mpv.txt"
#录制媒体流到指定文件
#stream-record=C:\Videos\output.mp4

##配置组##
#不要在配置组之间插入常规配置

#暂停或全屏时不置顶
[ontop-playback]
profile-cond=pause or fullscreen
ontop=no
profile-restore=copy

#当文件所在路径包含'music'时，禁用记录播放状态、OSC常驻
#[music]
#profile-cond=require 'mp.utils'.join_path(working_directory, path):match('music') ~= nil
#save-position-on-quit=no
#script-opts-add=osc-visibility=always
#profile-restore=copy
```

## input.conf常用配置

出处：<https://www.bilibili.com/read/cv13479755/>
```
MBTN_LEFT 		ignore					#鼠标左键 无操作
MBTN_LEFT_DBL 	cycle fullscreen		#左键双击 切换全屏
MBTN_RIGHT 		cycle pause				#右键 切换暂停
MBTN_MID		ignore 					#鼠标中键 无操作
MBTN_BACK 		playlist-prev			#侧键向前 播放列表上一个
MBTN_FORWARD 	playlist-next			#侧键向后 播放列表下一个
WHEEL_UP 		add volume 5			#滚轮向上 音量+5
WHEEL_DOWN 		add volume -5			#滚轮向下 音量-5
WHEEL_LEFT 		seek 2 					#滚轮向左 向前2秒（适用触摸板）
WHEEL_RIGHT 	seek -2 				#滚轮向右 向后2秒

ESC 	set fullscreen no 				#ESC 退出全屏
SPACE 	cycle pause 					#空格 切换暂停
ENTER 	cycle fullscreen 				#回车 切换全屏
KP_ENTER cycle fullscreen 				#小键盘回车 切换全屏

UP  		add volume 2 				#方向键上 音量+2
DOWN  		add volume -2 				#方向键下 音量-2
Shift+UP  	add volume 10 				#音量+10
Shift+DOWN  add volume -10 				#音量-10
LEFT  		seek -2 					#方向键左 后退2秒（快速但不精确）
RIGHT 		seek  2 					#方向键右 前进2秒
Shift+LEFT  seek -60 					#后退60秒
Shift+RIGHT seek 87 exact				#前进87秒（带exact较慢但精确）
Ctrl+UP 	add audio-delay -0.1		#音频延迟-0.1
Ctrl+DOWN 	add audio-delay +0.1		#音频延迟+0.1
Ctrl+LEFT 	add sub-delay -0.1			#字幕延迟-0.1
Ctrl+RIGHT  add sub-delay 0.1			#字幕延迟+0.1

PGUP 	playlist-prev					#播放列表上一个
PGDWN 	playlist-next					#播放列表下一个
HOME 	add chapter -1					#上一章节
END 	add chapter 1					#下一章节
F8 		show-text ${playlist}			#F8显示播放列表
F9 		show-text ${track-list}  		#F9显示视频、音频、字幕轨道信息
F10 	playlist-shuffle; show-text "playlist-shuffle" #乱序播放列表
INS 	script-message-to console type "loadfile " #打开控制台并输入loadfile ，之后可直接使用shift+INS或ctrl+v粘贴链接，回车播放

z set speed 1.0						#播放速度设为1
x add speed -0.1					#播放速度-0.1
c add speed 0.1						#播放速度+0.1
X multiply speed 0.5				#播放速度x0.5
C multiply speed 2.0				#播放速度x2
v frame-back-step					#前一帧
b frame-step						#后一帧
n add sub-pos -1					#字幕上移1
m add sub-pos +1					#字幕下移1
, add sub-scale -0.05				#字幕缩小5%
. add sub-scale +0.05				#字幕放大5%
/ set sub-pos 100;set sub-scale 1;set audio-delay 0;set sub-delay 0 #复原字幕位置&大小&延迟 与 音频延迟

a cycle audio						#切换音轨
s cycle sub							#切换字幕轨
d cycle sub-visibility				#切换字幕开/关
f cycle mute						#静音开/关
g cycle ontop 						#置顶开/关
G cycle border 						#无边框开/关
h cycle-values hwdec "auto" "no" 	#切换硬解软解
j cycle deinterlace					#切换反交错
k cycle-values video-aspect-override "16:9" "4:3" "2.35:1" "-1" #循环视频比例
l ab-loop 							#设置/清除 A-B loop点
K cycle-values loop-file inf no 	#切换文件循环
L cycle-values loop-playlist inf no #切换列表循环
; script-binding osc/visibility 	#切换OSC可视性（常驻、隐藏、自动）
' cycle-values osd-level "1" "2" "3" 	#切换OSD显示等级

TAB script-binding stats/display-stats-toggle #切换统计信息开/关，1234可翻页
q 	add brightness -1				#亮度-1
w 	add brightness 1				#亮度+1
e 	add contrast -1					#对比度-1
r 	add contrast 1					#对比度+1
t 	add gamma -1					#伽马-1
y 	add gamma 1						#伽马+1
u 	add saturation -1				#饱和度-1
i	add saturation 1				#饱和度+1
o 	add hue -1						#色调-1
p 	add hue 1						#色调+1
[ 	set contrast 0; set brightness 0; set gamma 0; set saturation 0; set hue 0 #视频均衡器归零
] 	show-text "速度=${speed} 置顶=${ontop}   单循环=${loop-file} 全循环=${loop-playlist}   字幕延迟=${sub-delay} 音频延迟=${audio-delay}  亮度=${brightness} 对比度=${contrast} 伽马=${gamma} 饱和度=${saturation} 色调=${hue}" #显示状态信息
\ show-progress							#显示播放进度

` script-binding console/enable		#打开控制台，ESC退出
1 set window-scale 0.333 			#设置窗口为视频原输出0.333倍
2 set window-scale 0.667 			#设置窗口为视频原输出0.667倍
3 set window-scale 1.0 				#设置窗口为视频原输出大小
4 add current-window-scale -0.1 	#缩小窗口
5 add current-window-scale  0.1 	#放大窗口
6 add video-zoom -0.01 				#缩小视频(log2对数比例)
7 add video-zoom 0.01 				#放大视频
8 add panscan -0.1 					#减少裁剪
9 add panscan 0.1 					#裁剪视频减少黑边
0 cycle-values "!reverse" video-rotate "no" "90" "180" "270" #反向循环 不旋转/90/180/270
- set video-zoom 0 ; set panscan 0	#重设视频缩放裁剪
+ screenshot window 				#带界面（OSC/OSD）截图
= screenshot video 					#视频截图
```