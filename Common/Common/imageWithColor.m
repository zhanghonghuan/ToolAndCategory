//
//  imageWithColor.m
//  Common
//
//  Created by zhanghonghuan on 15-2-28.
//  Copyright (c) 2015年 zhanghonghuan. All rights reserved.
//

#import "imageWithColor.h"

@implementation imageWithColor
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size {
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}
@end
