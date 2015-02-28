//
//  UIImage+Corner.h
//  MarketingEvent
//
//  Created by zhanghonghuan on 15-2-28.
//  Copyright (c) 2015年 avepoint. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum {
    UIImageRoundedCornerTopLeft = 1,
    UIImageRoundedCornerTopRight = 1 << 1,
    UIImageRoundedCornerBottomRight = 1 << 2,
    UIImageRoundedCornerBottomLeft = 1 << 3
} UIImageRoundedCorner;
@interface UIImage (Corner)
- (UIImage *)roundedRectWith:(float)radius cornerMask:(UIImageRoundedCorner)cornerMask;
@end
