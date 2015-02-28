//
//  UIColor+Hex.h
//  AvePoint.BYOD.IPhone
//
//  Created by Simon Qu on 4/2/13.
//  Copyright (c) 2013 AvePoint. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Hex)

/**
 * 用长整型定义color，默认透明度为1.0
 *
 * @param hexColor
 *
 * @return UIColor
 */
+ (UIColor *)colorWithHex : (long)hexColor;

/**
 * 用长整型定义color，自定义透明度
 *
 * @param hexColor
 *
 * @param opacity
 *
 * @return UIColor
 */
+ (UIColor *)colorWithHex : (long)hexColor alpha:(float)opacity;

/**
 * 用字符串定义color，默认透明度为1.0
 *
 * @param hexColor
 *
 * @return UIColor
 */
+ (UIColor *)colorWithHexString:(NSString*)hexColor;

+ (UIColor *)RedColor;

+ (UIColor *)BackgroundColor;
@end
