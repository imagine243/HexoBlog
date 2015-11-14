title: 学习objective-c
date: 2015-11-14 10:42:19
tags: mac 
tags: objective-c
categories : mac 
categories : objective-c
---


## 学习objective-c 

#### #import
\#import 可以保证头文件只被包含一次，而不论实际引用了几次。相当于c++的 #ifdef方案。

#### NSString @
双引号的字符串前面家上@符号，表示这个字符串是应该作为NSString类型处理。

#### BOOL类型
BOOL的值分别是YES和NO， 分别是通过＃define定义的 signed char 类型的 1和0.

#### NSLog()
NSLog()可以使用％@来格式化打印一个对象，内容是对象的 description函数提供。

#### 定义类
头文件中定义

	// Point.h
	@interface Point : NSObject  //类的声明 继承自NSObject
	// 成员变量区域
	{
		int x ;
		int y ;
	}
	// 声明的方法， 外部可以看见
	- (void) SetX: (int) x;
	
	- (void) SetY: (int) y;
	
	// 类声明的结束 
	@end //Point 类名的注释
	
m文件中的实现

	// Point.m
	
	@implementation Point //类的实现 实现头文件中的声明 和 一些内部需要功能
	
	- (void) SetX: (int) x  //实现函数 
	{
		//self 相当于 c＋＋ 中的 this
		self.x = x;
	}
	
	- (void) SetY: (int) y
	{
		self.y = y;
	}
	
	// 内部实现函数， 没有在 @interface中声明， 外部看不到， 但是因为objective－c的动态性，实际上外部还是能够调用的。
	- (void) ReSetX: (int) x SetY: (int) y
	{
		self.x = x;
		self.y = y;
	}
	// 类实现的结束声明
	@end //Point


以上代码只是说明作用，并没有检查并编译运行，可能存在bug。


#### @class  
@class 只是引入class ，与#import 不同 。
