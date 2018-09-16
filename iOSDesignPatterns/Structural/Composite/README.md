# 组合模式(`Composite`)

### 概念
将对象组合成树形结构以表示部分整体的关系，组合使得用户对单个对象和组合对象的使用具有一致性。

### 特点
树枝和叶子实现统一接口，树枝内部组合该接口。(eg: UIView)

### 核心角色
* 抽象接口(SqliteDBProtocol)
* 具体抽象部分(树节点)(HumanSqliteDB,AnimalSqliteDB)
* 实现部分(叶节点)(JackDB,RoseDB)

### UML
![Composite UML](https://upload-images.jianshu.io/upload_images/1893416-dd9dc7573d17bafa.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
