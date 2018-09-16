# 享元模式(`Flyweight`)

### 概念
强调对象共享(eg: tableViewCell)
使用共享对象可以有效地支持大量的细粒度对象。

### 特点
* 本质就是一个工厂模式
* 同一个类在不同场景下扮演角色会不一样

### 核心角色
享元对象接口
具体享元对象
享元工厂（负责创建对象、管理对象）

### UML
![Flyweight UML](https://upload-images.jianshu.io/upload_images/1893416-a38f87fb1139cf40.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
