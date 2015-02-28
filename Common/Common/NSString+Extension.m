//
//  NSString+Extension.m
//  MarketingEvent
//
//  Created by 张濛 on 15-2-6.
//  Copyright (c) 2015年 avepoint. All rights reserved.
//

#import "NSString+Extension.h"

@implementation NSString (Extension)

- (BOOL)isEqualToString:(NSString *)str withCaseble:(BOOL)caseble {
    if ([NSString isNullOrEmpty:str]) {
        return NO;
    }
    if (caseble) {
        return [self isEqualToString:str];
    }
    return [[self lowercaseString] isEqualToString:[str lowercaseString]];
}

- (BOOL)containsString:(NSString *)str {
    if ([NSString isNullOrEmpty:str]) {
        return NO;
    }
    return ([[self lowercaseString] rangeOfString:[str lowercaseString]].length > 0);
}

+ (BOOL)isNullOrEmpty:(NSString *)str {
    BOOL result = (str && (NSNull *)str != [NSNull null] && str.length > 0);
    return !result;
}

@end
