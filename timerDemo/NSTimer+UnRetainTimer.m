//
//  NSTimer+UnRetainTimer.m
//  timerDemo
//
//  Created by jason zhang on 2018/1/4.
//  Copyright © 2018年 张泽鑫. All rights reserved.
//

#import "NSTimer+UnRetainTimer.h"

@implementation NSTimer (UnRetainTimer)
+ (NSTimer *)az_scheduledTimerWithTimeInterval:(NSTimeInterval)inerval repeats:(BOOL)repeats block:(void (^)(NSTimer *timer))block{
    return [NSTimer scheduledTimerWithTimeInterval:inerval target:self selector:@selector(az_blcokInvoke:) userInfo:[block copy] repeats:repeats];
}

+ (void)az_blcokInvoke:(NSTimer *)timer {
    void (^block)(NSTimer *timer) = timer.userInfo;
    if (block) {
        block(timer);
    }
}
@end
