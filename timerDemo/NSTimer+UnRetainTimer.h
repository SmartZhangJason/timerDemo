//
//  NSTimer+UnRetainTimer.h
//  timerDemo
//
//  Created by jason zhang on 2018/1/4.
//  Copyright © 2018年 张泽鑫. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (UnRetainTimer)
+ (NSTimer *)az_scheduledTimerWithTimeInterval:(NSTimeInterval)inerval
                                        repeats:(BOOL)repeats
                                          block:(void(^)(NSTimer *timer))block;
@end
