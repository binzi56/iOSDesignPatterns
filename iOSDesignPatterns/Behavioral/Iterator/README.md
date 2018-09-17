# 迭代器模式(`Iterator`)

### 概念
提供一种方法，按照顺序访问一个容器对象中的各个元素，而又不需要暴露该容器的内部细节。

### 特点
遍历容器对象

### 核心角色
* 迭代器接口(TicketIteratorProtocol)
+ 定义访问遍历元素的方法    
* 具体迭代器(TicketIterator, StudentTicketIterator)
+ 遍历具体元素方法实现
* 容器接口(SiteAggregrateProtocol)
+ 定义存储元素的方法
* 具体容器(SiteAggregrate)

### UML
![Iterator UML](https://upload-images.jianshu.io/upload_images/1893416-3206119721fdab59.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
