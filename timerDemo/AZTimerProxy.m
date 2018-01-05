//
//  AZTimerProxy.m
//  timerDemo
//
//  Created by jason zhang on 2018/1/4.
//  Copyright © 2018年 张泽鑫. All rights reserved.
//

#import "AZTimerProxy.h"

@implementation AZTimerProxy
- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    NSMethodSignature *sig;
    sig = [self.obj methodSignatureForSelector:aSelector];
    return sig;
    
}
- (void)forwardInvocation:(NSInvocation *)invocation {
    [invocation invokeWithTarget:self.obj];
}
@end
