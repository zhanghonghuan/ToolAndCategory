//
//  GetFileSize.m
//  Common
//
//  Created by zhanghonghuan on 15-2-28.
//  Copyright (c) 2015年 zhanghonghuan. All rights reserved.
//

#import "GetFileSize.h"

@implementation GetFileSize


/**
 *  遍历文件夹获得文件夹大小，返回多少M
 *
 *  @param folderPath folder路径
 *
 *  @return folder下文件总大小，单位为M
 */
+ (float ) folderSizeAtPath:(NSString*) folderPath
{
    NSFileManager* manager = [NSFileManager defaultManager];
    if (![manager fileExistsAtPath:folderPath]) return 0;
    NSEnumerator *childFilesEnumerator = [[manager subpathsAtPath:folderPath] objectEnumerator];
    NSString* fileName;
    long long folderSize = 0;
    while ((fileName = [childFilesEnumerator nextObject]) != nil){
        NSString* fileAbsolutePath = [folderPath stringByAppendingPathComponent:fileName];
        folderSize += [GetFileSize fileSizeAtPath:fileAbsolutePath];
    }
    return folderSize/(1024.0*1024.0);
}

/**
 *  单个文件的大小
 *
 *  @param filePath 文件路径
 *
 *  @return 文件大小，单位为B
 */
+ (long long) fileSizeAtPath:(NSString*) filePath{
    NSFileManager* manager = [NSFileManager defaultManager];
    if ([manager fileExistsAtPath:filePath]){
        return [[manager attributesOfItemAtPath:filePath error:nil] fileSize];
    }
    return 0;
}
@end
