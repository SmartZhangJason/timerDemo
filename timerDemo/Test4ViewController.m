//
//  Test4ViewController.m
//  timerDemo
//
//  Created by jason zhang on 2018/1/5.
//  Copyright © 2018年 张泽鑫. All rights reserved.
//

#import "Test4ViewController.h"

@interface Test4ViewController ()
@property (nonatomic,strong) NSTimer *timer;
@property (nonatomic,assign) NSInteger count;
@end

@implementation Test4ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    __weak Test4ViewController *weakSelf = self;
    _timer = [NSTimer scheduledTimerWithTimeInterval:1 repeats:YES block:^(NSTimer * _Nonnull timer) {
        [weakSelf countTimer];
    }];
}

- (void)countTimer{
    NSLog(@"--->%ld",(long)self.count++);
}

- (void)dealloc{
    [_timer invalidate];
}


@end
