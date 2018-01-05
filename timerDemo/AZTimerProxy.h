//
//  AZTimerProxy.h
//  timerDemo
//
//  Created by jason zhang on 2018/1/4.
//  Copyright © 2018年 张泽鑫. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AZTimerProxy : NSProxy
@property (nonatomic,weak) id obj;
@end
