# 工厂方法模式(`Factory Method`)

### 概念
定义一个用于创建对象的接口，让子类决定实例化哪一个类。 

### 特点
跟[抽象工厂模式](https://github.com/binzi56/iOSDesignPatterns/tree/master/iOSDesignPatterns/Creational/AbstractFactory)对比起来，只有一条流水线。 

### 核心角色
* 抽象产品(FlagProtocol)
* 具体产品(Flag,ChinaFlag,AmericanFlag)
* 抽象工厂(FlagFactoryProtocol)
* 具体工厂(ChinaFlagFactory,AmericanFlagFactory)

### UML
![Factory Method UML](https://upload-images.jianshu.io/upload_images/1893416-4b06e3e223d8e336.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
