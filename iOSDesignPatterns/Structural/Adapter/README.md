# 适配器模式(`Adapter`)

### 概念
将一类的接口转换成客户希望的另外一个接口，Adapter模式使得原本由于接口不兼容而不能一起工作那些类可以一起工作。

### 特点
类适配器+对象适配器

### 核心角色
* 适配器(BaseAdapter)
* 目标接口(AdapterProtocol)
* 被适配者(Adapter)

### UML
![Adapter UML](https://upload-images.jianshu.io/upload_images/1893416-32c8e5b5903d4935.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

### 其他
本例中加入了TableViewDataSource是适配器实例;
