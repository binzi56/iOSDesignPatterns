# 代理模式(`Proxy`)

### 概念
为其他对象提供一种代理，控制对这个对象的访问

### 特点
动态代理（Java语言）、静态代理

### 核心角色
* 代理对象(ProTeacher)
   * 特点一：持有目标对象引用
   * 特点二：实现目标接口
* 目标接口(ProTeacherProtocol)
* 具体目标对象(ProTeacherA)

### UML
![Proxy UML](https://upload-images.jianshu.io/upload_images/1893416-057713d013e1a995.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
