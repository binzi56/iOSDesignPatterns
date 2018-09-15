# 外观模式(`Facade`)

### 概念
又称门面模式
* 要求一个子系统的外部和其内部的通信必需通过一个统一的对象进行。
* 外观模式提供了一个高层次接口，使得子系统更易于使用。

### 特点
如果子系统之间有相互依赖，可以简化它们之间的依赖关系。

### 核心角色
系统对外统一接口（CookingManager）
子系统接口（Tableware，Food）

### UML
![Facade UML](https://upload-images.jianshu.io/upload_images/1893416-931d82ceab9e5e62.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
