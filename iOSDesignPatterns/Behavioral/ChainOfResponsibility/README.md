# 责任链模式(`Chain of responsibility`)

### 概念
避免请求发送者与接收者耦合在一起，让多个对象都有可能接收请求，将这些对象连接成一条链，并且沿着这条链传递请求，直到有对象处理它为止。(对个对象处理同一个请求)

### 特点
多个对象同时处理同一请求，但是由哪个对象处理在运行的时候决定

### 核心角色
* 抽象处理对象(RoseChain)
* 具体处理对象(JackChain,RoseChain)

### UML
![Chain of responsibility UML](https://upload-images.jianshu.io/upload_images/1893416-b55c5c126d604b8e.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

