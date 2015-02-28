//
//  DateStr.m
//  Common
//
//  Created by zhanghonghuan on 15-2-28.
//  Copyright (c) 2015年 zhanghonghuan. All rights reserved.
//

#import "DateStr.h"

@implementation DateStr
+ (NSString *)currentDateStr
{
    //获取当前时间，日期
    NSDate *currentDate = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"MM/dd/YYYY hh:mm aaa"];
    NSString *dateString = [dateFormatter stringFromDate:currentDate];
    return dateString;
}
@end
