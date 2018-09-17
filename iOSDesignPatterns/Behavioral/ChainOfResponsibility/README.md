# 责任链模式(`Chain of responsibility`)

### 概念
* 使多个对象有机会处理请求，从而避免了请求的发送者和接受者之间的耦合关系
* 将这些对象连成一条链，并沿着这条链传递该请求，直到有对象处理它为止

### 特点
多个对象同时处理同一请求，但是由哪个对象处理在运行的时候决定

### 核心角色
* 抽象处理对象(RoseChain)
* 具体处理对象(JackChain,RoseChain)

### UML
![Chain of responsibility UML](https://upload-images.jianshu.io/upload_images/1893416-b55c5c126d604b8e.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

