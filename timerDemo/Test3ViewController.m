//
//  Test3ViewController.m
//  timerDemo
//
//  Created by jason zhang on 2018/1/4.
//  Copyright © 2018年 张泽鑫. All rights reserved.
//

#import "Test3ViewController.h"
#import "MSWeakTimer.h"

@interface Test3ViewController ()
@property (nonatomic,strong) MSWeakTimer *timer;
@property (nonatomic) NSInteger count;
@end

@implementation Test3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    dispatch_queue_t queue = dispatch_get_main_queue();
    dispatch_queue_t queue = dispatch_get_global_queue(0, 0);
    self.view.backgroundColor = [UIColor whiteColor];
    _timer = [MSWeakTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(doSomeThing) userInfo:nil repeats:YES dispatchQueue:queue];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    NSLog(@"我销毁了");
}

- (void)doSomeThing {
    NSLog(@"%ld",(long)self.count++);
}
@end
