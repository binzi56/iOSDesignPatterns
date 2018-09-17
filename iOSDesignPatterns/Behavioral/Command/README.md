# 命令模式(`Command`)

### 概念
* 将一个请求封装成为一个对象，从而让用户使用不同的请求将客户端参数化
* 对请求排队或者纪录请求日志，以及支持撤销操作

### 特点
调用者与接收者之间没有任何依赖关系；扩展性良好。
（eg: 系统UndoManager, [YTKNetwork](https://link.jianshu.com/?t=https://github.com/yuantiku/YTKNetwork)）

### 核心角色
* Receiver：接收者（负责具体的功能实现，执行具体的逻辑）(CommandReceiver)
* Command：命令接口（命令抽象）(CommandProtocol)
* ConcreteCommand：具体的命令（调用接受者逻辑方法，行为方法）(DynamicCommand)
* 具体的命令需要持有接收者引用对象
* Invoker：请求者角色(CommandInvoker)

### UML
![Command UML](https://upload-images.jianshu.io/upload_images/1893416-77b23df6cff6b824.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

