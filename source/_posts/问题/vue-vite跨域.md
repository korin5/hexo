---
title: vue+vite跨域
# toc: true
categories:
  - 问题
tags:
  - 前端
  - vue
# pic: /assets/blogcovers/vue+vite跨域.webp
date: 2023-09-12 21:52:55
---

# 报错

> Access to XMLHttpRequest at '<http://localhost:3000/player>' from origin '<http://localhost:4000/>' has been blocked by CORS policy: No 'Access-Control-Allow-Origin' header is present on the requested resource.

# 原因

vue需要配置自定义代理规则进行跨域访问

# 解决

官方文档：<https://cn.vitejs.dev/config/server-options.html#server-proxy>

以vue为例：

```typescript
//vite.config.ts

export default defineConfig({
  plugins: [vue()],
  server: {
    host: '0.0.0.0',
    port: 4000,      	//vite的默认端口
    open: true,	
    proxy: {
      "/api": {			//代理的请求
        target: "http://localhost:3000",	//后端的地址
        changeOrigin: true,					//开启跨域访问
        rewrite: (path) => path.replace(/^\/api/,''),	//重写前缀（如果接口本身就有api这个通用前缀，那么就不用重写）
      },
    },
  },
})
```

```typescript
//发起请求的地方

//配置前缀
axios.defaults.baseURL ='/api';

//发起请求
//上面配置过 http://localhost:3000
//所以这里会请求到http://localhost:3000/player
axios.get('player')		
```