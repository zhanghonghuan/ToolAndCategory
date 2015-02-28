//
//  TimerApplication.h
//  TimeOutToDoSomething
//
//  Created by zhanghonghuan on 15-2-28.
//  Copyright (c) 2015年 zhanghonghuan. All rights reserved.
//

#import <UIKit/UIKit.h>
//定义通知名称，其真实内容是字符串 "timed out"
#define kApplicationDidTimeoutNotification @"AppTimeOut"
@interface TimerApplication : UIApplication

@property (nonatomic) NSTimer *myidleTimer;
@property (nonatomic) NSDictionary *timeValues;
-(void)resetIdleTimer;
@end
