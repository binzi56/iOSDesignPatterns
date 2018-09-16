# 桥接模式(`Bridge`)

### 概念
将抽象部分和实践部分分离，使他们都可以独立地进行变化。

### 特点
为了解决类层级爆炸或者不同的API之间进行桥接。

### 核心角色
* 抽象部分(MilkTeaAdds)
* 具体抽象部分（IceAdds,SugarAdds）
* 抽象实现部分(MilkTea)
* 实现具体功能(BigCupTea,MediumCupTea,SmallMilkTea)

### UML
![Bridge UML](https://upload-images.jianshu.io/upload_images/1893416-8e7e26e5cf2c39bf.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
