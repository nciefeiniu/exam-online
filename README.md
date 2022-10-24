# exam-online
> 在线考试系统前端界面，采用Vue编写

默认本地装了 `node` （测试node版本14是无问题的！！！其他版本未做验证）

## 本地启动
> ⚠️注意，这里不支持macOS

前提：
先部署好后端服务！！！并设置正确的服务地址，就是修改 `vue.config.js` 文件
```javascript
module.exports = {
	devServer: {
		proxy: {
			'/api': {
				target: 'http://127.0.0.1:8081',  // 这就是我部署的后端地址
				changeOrigin: true,
				pathRewrite: {
					'^/api': '/'
				}
			}
		}
	}
}
```

1. 安装依赖
```
npm install
```

2. 启动前端服务（测试用的）
```
npm run serve
```

3. 这是正式打包，这是正式部署
```
npm run build
```

咱们本地启动 只需要 1和 2 这两个步骤。如果需要正式部署，就是用第三步，然后用 Nginx 把服务跑起来

这里咱们就不多讲了，百度一下很多的，本地启动不推荐使用nginx


## Docker

前提：
先部署好后端服务！！！并设置正确的服务地址，就是修改 `vue.config.js` 文件
```javascript
module.exports = {
	devServer: {
		proxy: {
			'/api': {
				target: 'http://127.0.0.1:8081',  // 这就是我部署的后端地址
				changeOrigin: true,
				pathRewrite: {
					'^/api': '/'
				}
			}
		}
	}
}
```

1. 构建 Docker 镜像
```
docker build . -t vue-docker
```

2. 运行 Docker 镜像

```
docker run -d -p 9090:80 vue-docker
```

3. 访问vue-docker
```
http://localhost:9090/
```