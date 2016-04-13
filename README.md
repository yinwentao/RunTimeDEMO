# RunTimeDEMO
前言：
我们知道Objective-C调用方法是一种发消息的机制，编译器会把 [target doMethodWith:var1];转换为
objc_msgSend(target,@selector(doMethodWith:),var1)。本文简单介绍一下Runtime概念,并着重总结一下Runtime的实用技能。

代码解释
简书：http://www.jianshu.com/p/51d33d8f63e9
