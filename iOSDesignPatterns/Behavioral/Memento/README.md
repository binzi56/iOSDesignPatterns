# 备忘录模式(`Memento`)

### 概念
在不破坏封闭的前提下，捕获一个对象的内部状态，并在该对象之外保存这个状态，这样以后就可以将该对象恢复到原先保存的状态。

### 特点
* 行为设计模式
* 用于保存对象的当前状态，并且以后可以再次恢复到此状态，通俗说法”后悔药“
* 需要保证被保存的对象状态不能被对象从外部访问（目的：为了保护好被保存的这些对象状态的完整性以及内部实现不向外暴露）

### 核心角色
* Originator：负责创建一个备忘录，可以记录或者恢复内部状态(MementoStore)
* Memento：备忘录角色，用于存储Originator的内部状态，并且可以防止Originator以外的对象访问(MementoRole)
* Caretaker：负责存储备忘录，不能够向外暴对备忘录内容进行操作(MementoOriginator)

### UML
![Memento UML](https://upload-images.jianshu.io/upload_images/1893416-3a06252fff828c31.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

