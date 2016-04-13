//
//  Person.h
//  RunTimeDEMO
//
//  Created by 尹文涛 on 16/4/13.
//  Copyright © 2016年 小木科技. All rights reserved.
//

    #import <Foundation/Foundation.h>

    @protocol personDelegate <NSObject>

    - (void)personPayForFun:(NSInteger)money;

    @end

    @interface Person : NSObject

    #pragma mark -属性
    @property (nonatomic,assign) id<personDelegate> delegate;
    @property (nonatomic,copy) NSString *name;//姓名
    @property (nonatomic,copy) NSString *sex;//性别
    @property (nonatomic,assign) NSInteger age;//年龄
    @property (nonatomic,assign) float height;//身高
    @property (nonatomic,copy) NSString *job;//工作
    @property (nonatomic,copy) NSString *native;//籍贯

    #pragma mark -方法
    - (void)eat;
    - (void)sleep;
    - (NSString *)doSomeThing;
    - (NSString *)doSomeOtherThing;

    @end
