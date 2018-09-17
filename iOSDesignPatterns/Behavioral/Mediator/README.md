# 中介者模式(`Mediator`)

### 概念
又名调解者模式、调停者模式
用一个中介对象来封装一系列的对象交互，中介者使各对象不需要显式地相互引用，从而使其耦合松散，而且可以独立地改变它们之间的交互。
(eg: MVP, 代理, 继承)

### 特点
* 多个类相互依赖，形成了网状结构
* 将复杂关系的网状结构变成结构简单的以中介者为核心的星形结构
* 一对多转化成了一对一

### 核心角色
* Mediator（抽象中介者）(PhoneMediator)
* ConcreteMediator（具体中介者）(AppleMediator)
* Colleague（抽象同事）(PhoneColleague)
* ConcreteColleague（具体同事）(BatteryColleague, CPUColleague)

### UML
![Mediator UML](https://upload-images.jianshu.io/upload_images/1893416-18e8e5463b5b89ee.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
