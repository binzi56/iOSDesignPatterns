# 解释器模式(`Interpreter`)

### 概念
给定一个语言，定义它的文法的一种表达式，并且定义一个解析器，该解析器使用该表示来解析语言中的句子。
共有三种对象
* ***语言*** ：即你输入的或者说需要翻译的部分是什么。
* ***文法*** ：即你用什么方式、方法翻译改语言。
* ***解释器对象*** ：即该对象包括了多种文法，只需调用该对象进行解释。

### 特点
将某个简单的语言表示为抽象语法树(eg: 正则表达式)

### 核心角色
* 抽象表达式（ExpressionProtocol）
* 终结符表达式（FinalExpression）
* 非终结符表达式（NotFinalExpression）
* 解析器上下文（Context）

### UML
![Interpreter UML](https://upload-images.jianshu.io/upload_images/1893416-87bc445732e222ae.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
