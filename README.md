# Android-API帮助文档

<img style="zoom:50%;border-radius:50%" src="http://q1.qlogo.cn/g?b=qq&amp;nk=305887669&amp;s=100" alt="circle">

> 欢迎使用Android-API，Android-API是一个简单的Android API文档生成工具，可以帮助开发者快速生成Android API
>
> 本项目来自：
> ​        [What's Blog - 程序猿，给社会主义造 Bug (whatsblog.site)](https://www.whatsblog.site/)
> 本项目地址：
>
> ​        [AndroidApi (github.com)](https://github.com/Suk-Li/AndroidApi)
> ​        [AndroidApi (gitee.com)](https://gitee.com/Suk_Lee/AndroidApi)

## 1、项目说明

本项目主要是面向苏州科技大学Android课程实验五设计的一款Web API服务，本项目简洁干净，无任何无关代码。未做认证操作，只是简单的对着数据库做了一套简单的增删改查，部分API使用了Restful风格，在接下来会将参数描述清楚。

本项目完全开源，您可根据已有架构做任何修改，二次开发，项目及生成的所有代码，所有资源与本作者无关

另外，项目所需的数据库脚本文件您可以在目录结构中找到sql目录，创建数据库取用脚本文件即可

本项目的数据库有一定的局限性，对于数据库名、用户名、密码等参数您可以在`application.yml`中修改

修改后编译运行即可。

## 2、环境说明

本项目主要通过SpringBoot+Mybatis实现API功能，使用Maven管理依赖，具体内容如下

* Maven 3.6+
* SpringBoot 2.6.7
* mybatis-spring-boot 2.2.2
* mysql-connector-java 8.0.28
* lombok 1.18

使用时只需要运行`AndroidApiApplication`即可

## 3、目录结构

├─sql： 项目所需数据库脚本
└─src
├─main
│ ├─java
│ │ └─site
│ │ └─whatsblog
│ │ └─androidapi
│ │ ├─controller： 控制层
│ │ ├─mapper ：持久层
│ │ ├─pojo ：实体类
│ │ └─service ：业务层
│ │ └─impl ：业务层的具体实现
│ └─resources ： 里边有项目的配置文件    `application.yml`

## 4、API说明

项目API默认的访问地址是：http://localhost:8080/student

API以JSON交互，所有API将以以下格式返回：

~~~shell
{
  "result": ... ,
  "code": 200
}
~~~

| 键名   | 解释说明                         |
| ------ | -------------------------------- |
| result | 表示当前返回的操作数据库后的数据 |
| code   | 状态码，200为成功，404为失败     |

API详细说明：

http://localhost:8080/student/list    、    http://localhost:8080/student/get/1

如以上所述，您访问的地址必须包含项目地址，以下根据访问路径来介绍：

| 用法       | 访问路径     | 方法                    | 参数格式                                                     |
| ---------- | ------------ | ----------------------- | ------------------------------------------------------------ |
| 根据id查询 | /get/{id}    | GET/POST/PUT/DELETE/... | 将{id}替换成您需要查询的id值即可，例如/get/1                 |
| 根据id删除 | /delete/{id} | GET/POST/PUT/DELETE/... | 将{id}替换成您需要查询的id值即可，例如/delete/1              |
| 更新       | /update      | GET/POST/PUT/DELETE/... | JSON格式，键名必须与其保持一致：{"stuId": 12,"stuName": "Sigma","phoneNumber": "10087","stuImage": 2131165332} |
| 插入       | /insert      | GET/POST/PUT/DELETE/... | {"stuId": 12,"stuName": "Sigma","phoneNumber": "10087","stuImage": 2131165332} |
| 查询所有   | /list        | GET/POST/PUT/DELETE/... | 无参数                                                       |

