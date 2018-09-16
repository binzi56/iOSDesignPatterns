# 策略模式(`Strategy`)

### 概念
* 定义了一系列算法
* 每一个算法单独封装
* 每一个算法都是可以相互替换
* 客户端可以独立变化算法（客户端：调用者）

### 特点
自由切换算法规则；屏蔽算法规则；

### 核心角色
策略接口(AlgorithmProtocol)
具体策略(DESEncryption,RSAEncryption)
策略上下文（管理器）

### UML
![Strategy UML](https://upload-images.jianshu.io/upload_images/1893416-77dbbae54574a652.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

