//
//  Test1ViewController.m
//  timerDemo
//
//  Created by jason zhang on 2018/1/4.
//  Copyright © 2018年 张泽鑫. All rights reserved.
//

#import "Test1ViewController.h"
#import "NSTimer+UnRetainTimer.h"
@interface Test1ViewController (){
    
}
@property (nonatomic,strong) NSTimer *timer;
@property (nonatomic) NSInteger count;
@end

@implementation Test1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    __weak Test1ViewController *weakSelf = self;
    _timer = [NSTimer az_scheduledTimerWithTimeInterval:1 repeats:YES block:^(NSTimer *timer) {
        __strong Test1ViewController *strongSelf = weakSelf;
        [strongSelf doSomeThing];
//        [self doSomeThing];
    }];
}
- (void)doSomeThing {
    NSLog(@"%ld",(long)self.count++);
}

- (void)dealloc {
    [self.timer invalidate];
}
@end
