//
//  ViewController.m
//  timerDemo
//
//  Created by jason zhang on 2018/1/4.
//  Copyright © 2018年 张泽鑫. All rights reserved.
//

#import "ViewController.h"
#import "TestViewController.h"
#import "Test1ViewController.h"
#import "Test2ViewController.h"
#import "Test3ViewController.h"
#import "Test4ViewController.h"

@interface ViewController (){
    
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    self->timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(doSomeThing) userInfo:nil repeats:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonAction:(id)sender {
    TestViewController *nextVC = [TestViewController new];
    [self.navigationController pushViewController:nextVC animated:YES];
}

- (IBAction)button1Action:(id)sender {
    Test1ViewController *nextVC = [Test1ViewController new];
    [self.navigationController pushViewController:nextVC animated:YES];
}
- (IBAction)button2Action:(id)sender {
    Test2ViewController *nextVC = [Test2ViewController new];
    [self.navigationController pushViewController:nextVC animated:YES];
}
- (IBAction)button3Action:(id)sender {
    Test3ViewController *nextVC = [Test3ViewController new];
    [self.navigationController pushViewController:nextVC animated:YES];
}
- (IBAction)button4Action:(id)sender {
    Test4ViewController *nextVC = [Test4ViewController new];
    [self.navigationController pushViewController:nextVC animated:YES];
}

@end
