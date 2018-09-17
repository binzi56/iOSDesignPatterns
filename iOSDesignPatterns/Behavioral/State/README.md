# 状态模式(`State`)

### 概念
当一个对象内在状态改变时允许其改变行为，这个对象看起来像改变了其类。

### 特点
* 行为随状态改变而改变的场景
* 条件、分支判断语句的替代者

### 核心角色
* 抽象状态(StateProtocol)
* 具体状态(OnState,OffState)
* 状态管理器(TvControlContext)

### UML
![State UML](https://upload-images.jianshu.io/upload_images/1893416-189e5eac798f0e25.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

