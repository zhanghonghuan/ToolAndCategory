//
//  TimerApplication.m
//  TimeOutToDoSomething
//
//  Created by zhanghonghuan on 15-2-28.
//  Copyright (c) 2015年 zhanghonghuan. All rights reserved.
//

#import "TimerApplication.h"

@implementation TimerApplication
/**
 *  监听所有触摸，当屏幕被触摸，时钟将被重置
 *
 *  @param event 触摸事件
 */
- (void)sendEvent:(UIEvent *)event {
    [super sendEvent:event];

    if (!_myidleTimer) {
        [self resetIdleTimer];
    }

    NSSet *allTouches = [event allTouches];
    if ([allTouches count] > 0) {
        UITouchPhase phase= ((UITouch *)[allTouches anyObject]).phase;
        if (phase ==UITouchPhaseBegan) {
            [self resetIdleTimer];
        }
    }
}

/**
 *  重置时钟
 */
- (void)resetIdleTimer {
    if (_myidleTimer) {
        [_myidleTimer invalidate];
    }
    float timeOut = 1;
    _myidleTimer = [NSTimer scheduledTimerWithTimeInterval:timeOut * 60
                                                        target:self
                                                      selector:@selector(idleTimerExceeded)
                                                      userInfo:nil repeats:NO];
}

/**
 *  当达到超时时间，张贴 kApplicationTimeoutInMinutes通知
 */
- (void)idleTimerExceeded {
    [[NSNotificationCenter defaultCenter] postNotificationName:kApplicationDidTimeoutNotification object:nil];
}
@end
