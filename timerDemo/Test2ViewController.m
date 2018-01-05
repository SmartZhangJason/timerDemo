//
//  Test2ViewController.m
//  timerDemo
//
//  Created by jason zhang on 2018/1/4.
//  Copyright © 2018年 张泽鑫. All rights reserved.
//

#import "Test2ViewController.h"
#import <objc/runtime.h>

@interface Test2ViewController ()
@property (nonatomic,strong) id timerTarget;
@end
static const void * TimerKey = @"TimerKey";
static const void * weakKey = @"weakKey";
@implementation Test2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
    _timerTarget = [NSObject new];
    //初始化timerTarge对象
    
    class_addMethod([_timerTarget class], @selector(timerEvent), (IMP)timMethod, "v@:");
    //动态创建timerEvent方法
    
    NSTimer *_timer;
    _timer = [NSTimer timerWithTimeInterval:1 target:_timerTarget selector:@selector(timerEvent) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:_timer forMode:NSRunLoopCommonModes];
    //创建计时器target对象为_timerTarget
    
    objc_setAssociatedObject(_timerTarget, TimerKey, _timer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(_timerTarget, weakKey, self, OBJC_ASSOCIATION_ASSIGN);
    //将self对象与NSTimer对象与_timerTarget对象关联

}

void timMethod(id self,SEL _cmd)
{
    Test2ViewController *vc = objc_getAssociatedObject(self, weakKey);
    [vc performSelector:_cmd];
}

-(void)timerEvent
{
    NSLog(@"%@",NSStringFromClass([self class]));
}
-(void)dealloc
{
    NSTimer *timer = objc_getAssociatedObject(_timerTarget, TimerKey);
    [timer invalidate];
    NSLog(@"%@--dealloc",NSStringFromClass([self class]));
}

@end
