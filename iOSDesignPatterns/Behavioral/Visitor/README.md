# 访问者模式(`Visitor`)

### 概念
封装一些作用于某种数据结构中的各个元素的操作，它可以在不改变这个数据结构的前提下定义作用于这些元素的新操作。

### 特点
* 对象结构（元素集合）包含很多类对象
* 在不更改访问元素结构的前提下增加实现的方法

### 核心角色
* 抽象访问者(接口或者抽象类)（VisitorProtocol）
* 定义了每一个元素访问行为
* 具体访问者(Visitor)
* 给出了每一个元素类访问时所产生的具体行为
* 元素接口(ItemProtocol)
* 具体元素(ItemA, ItemB)
* 具体对象结构（ItemContainer）

### UML
![Visitor UML](https://upload-images.jianshu.io/upload_images/1893416-daaccdbe2a0f5d36.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
