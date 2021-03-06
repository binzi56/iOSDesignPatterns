# 抽象工厂模式(`Abstract Factory`)

### 概念
提供一个创建一系列相关或相互依赖对象的接口，而无须指定它们的具体类。 

### 特点
跟[工厂方法模式](https://github.com/binzi56/iOSDesignPatterns/tree/master/iOSDesignPatterns/Creational/FactoryMethod)对比起来，至少2条流水线。 

### 核心角色
* 抽象产品(PhoneProtocol,BatteryProtocol)
* 具体产品(HuaweiPhone, ApplePhone;HuaweiBattery,AppleBattery)
* 抽象工厂(PhoneFactoryProtocol)
* 具体工厂(HuaweiFactory,AppleFactory)

### UML
![Abstract Factory UML](https://upload-images.jianshu.io/upload_images/1893416-5bfa9f2580bff729.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
