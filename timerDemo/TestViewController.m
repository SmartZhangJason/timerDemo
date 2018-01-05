//
//  TestViewController.m
//  timerDemo
//
//  Created by jason zhang on 2018/1/4.
//  Copyright © 2018年 张泽鑫. All rights reserved.
//

#import "TestViewController.h"

#import "AZTimerProxy.h"

@interface TestViewController (){
}

@property (nonatomic,strong) AZTimerProxy *proxy;
@property (nonatomic,strong) NSTimer *timer;
@property (nonatomic) NSInteger count;

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.proxy = [AZTimerProxy alloc];
    self.proxy.obj = self;
    _timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self.proxy selector:@selector(doSomeThing) userInfo:nil repeats:YES];
}

- (void)doSomeThing {
    NSLog(@"%ld",(long)self.count++);
}

- (void)dealloc {
    [self.timer invalidate];
}

@end
