# donkey-cloud

#### 介绍
{**以下是码云平台说明，您可以替换此简介**
码云是 OSCHINA 推出的基于 Git 的代码托管平台（同时支持 SVN）。专为开发者提供稳定、高效、安全的云端软件开发协作平台
无论是个人、团队、或是企业，都能够用码云实现代码托管、项目管理、协作开发。企业项目请看 [https://gitee.com/enterprises](https://gitee.com/enterprises)}

#### 项目包说明
```
donkey-cloud
   ├─doc                                  说明文档
   ├─donkey-cloud-auth                    Auth 认证
   │  ├─donkey-cloud-auth-client          Auth 认证客户端
   │  └─donkey-cloud-auth-server          Auth 认证服务
   ├─donkey-cloud-control                 平台公共基础库
   │  ├─donkey-cloud-acl                  平台权限控制中心
   │  │  ├─docs                           项目说明文档
   │  │  └─src                            
   │  │    └─main                         
   │  │       ├─assembly                  项目打包配置
   │  │       ├─frontend                  前端源码
   │  │       ├─java                      项目源码
   │  │       └─resources                 项目配置文件
   │  ├─donkey-cloud-admin·               平台公共管理资源系统
   │  ├─donkey-cloud-sbac                 Spring Boot Admin Console
   │  └─donkey-cloud-wechat               微信管理系统
   ├─donkey-cloud-gateway                 Cloud网关
   ├─donkey-cloud-modules                 Cloud公共模块
   │  ├─donkey-cloud-common               
   │  ├─donkey-cloud-core                 基础包
   │  └─donkey-cloud-web                  Web通用接口
   └─donkey-ms-sample                     Cloud的示例
      ├─donkey-ms-home                    首页服务示例
      ├─donkey-ms-order                   订单服务示例
      └─donkey-ms-user                    用户服务示例

```

#### 软件架构
软件架构说明

![部署架构图](docs/image/Donkey部署架构.jpg)


#### 安装教程

1. xxxx
2. xxxx
3. xxxx

#### 使用说明

1. xxxx
2. xxxx
3. xxxx

#### 相关知识
##### 1.　虚拟网关设置
```bash
sudo /etc/init.d/networking restart
```

#### 参与贡献

1. Fork 本仓库
2. 新建 Feat_xxx 分支
3. 提交代码
4. 新建 Pull Request


#### 码云特技

1. 使用 Readme\_XXX.md 来支持不同的语言，例如 Readme\_en.md, Readme\_zh.md
2. 码云官方博客 [blog.gitee.com](https://blog.gitee.com)
3. 你可以 [https://gitee.com/explore](https://gitee.com/explore) 这个地址来了解码云上的优秀开源项目
4. [GVP](https://gitee.com/gvp) 全称是码云最有价值开源项目，是码云综合评定出的优秀开源项目
5. 码云官方提供的使用手册 [https://gitee.com/help](https://gitee.com/help)
6. 码云封面人物是一档用来展示码云会员风采的栏目 [https://gitee.com/gitee-stars/](https://gitee.com/gitee-stars/)