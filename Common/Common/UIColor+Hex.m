//
//  UIColor+Hex.m
//  AvePoint.BYOD.IPhone
//
//  Created by Simon Qu on 4/2/13.
//  Copyright (c) 2013 AvePoint. All rights reserved.
//

#import "UIColor+Hex.h"

@implementation UIColor (Hex)

+ (UIColor *)colorWithHex:(long)hexColor
{
    return [UIColor colorWithHex:hexColor alpha:1.0];
}

+ (UIColor *)colorWithHex:(long)hexColor alpha:(float)opacity
{
    float red = ((float)((hexColor & 0xFF0000) >> 16)) / 255.0;
    float green = ((float)((hexColor & 0xFF00) >> 8)) / 255.0;
    float blue = ((float)(hexColor & 0xFF)) / 255.0;
    return [UIColor colorWithRed:red green:green blue:blue alpha:opacity];
}

+ (UIColor *)colorWithHexString:(NSString*)hexColor
{
    unsigned int red,green,blue;
    NSRange range;
    range.length = 2;
    
    range.location = 0;
    [[NSScanner scannerWithString:[hexColor substringWithRange:range]]scanHexInt:&red];
    
    range.location = 2;
    [[NSScanner scannerWithString:[hexColor substringWithRange:range]]scanHexInt:&green];
    
    range.location = 4;
    [[NSScanner scannerWithString:[hexColor substringWithRange:range]]scanHexInt:&blue];
    
    return [UIColor colorWithRed:(float)(red/255.0f) green:(float)(green / 255.0f) blue:(float)(blue / 255.0f) alpha:1.0];
}

+ (UIColor *)RedColor
{
    return [UIColor colorWithRed:170.0f/255.0f green:42.0f/255.0f blue:42.0f/255.0f alpha:(1.0)];
}
+ (UIColor *)BackgroundColor
{
    return [UIColor colorWithRed:233.0f/255.0f green:233.0f/255.0f blue:233.0f/255.0f alpha:(1.0)];
}
@end
