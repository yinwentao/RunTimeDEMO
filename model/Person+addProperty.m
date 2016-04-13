//
//  Person+addProperty.m
//  RunTimeDEMO
//
//  Created by 尹文涛 on 16/4/13.
//  Copyright © 2016年 小木科技. All rights reserved.
//

#import "Person+addProperty.h"
#import <objc/runtime.h>

@implementation Person (addProperty)

char eName;

- (void)setEnglishName:(NSString *)englishName
{
    objc_setAssociatedObject(self, &eName, englishName, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

-(NSString *)englishName
{
    return objc_getAssociatedObject(self, &eName);
}

// 该方法在类或分类在第一次加载内存的时候自动调用
+ (void)load
{
    Method orginalMethod = class_getInstanceMethod([Person class], @selector(sleep));
    Method newMethod = class_getInstanceMethod([Person class], @selector(noSleep));
    
    method_exchangeImplementations(orginalMethod, newMethod);
}
- (void)noSleep{
    NSLog(@"睡个屁起来high");
}

@end
