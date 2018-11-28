//
//  ViewController.m
//  LeftSwipDemo
//
//  Created by tianlei on 16/11/4.
//  Copyright © 2016年 tianlei. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"
#import "TLWindow.h"

@interface ViewController ()

@property (nonatomic, strong) FirstViewController *firstVC;


@property (nonatomic, assign) BOOL isShow;

@end

@implementation ViewController
- (IBAction)showLeftView:(UIBarButtonItem *)sender {
    _isShow = !_isShow;
    TLWindow *tlWindow = (TLWindow *)[UIApplication sharedApplication].keyWindow;
    if (_isShow) {
        [UIView animateWithDuration:0.5 animations:^{
            tlWindow.transform = CGAffineTransformTranslate(self.view.transform,[UIScreen mainScreen].bounds.size.width/2,0);
            [tlWindow addSubview:tlWindow.boredView];
        }];
    }else{
        [UIView animateWithDuration:0.5 animations:^{
            [UIApplication sharedApplication].keyWindow.transform = CGAffineTransformIdentity;
            [tlWindow.boredView removeFromSuperview];
        }];
    }
}
- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog( @"viewDidLoad" );
    _isShow = NO;

    
    _firstVC = [[FirstViewController alloc] init];


    [self addChildViewController:_firstVC];
    [self.view addSubview:_firstVC.view];
    self.title = _firstVC.title;
    
    
    self.navigationItem.leftBarButtonItem =  [[UIBarButtonItem alloc] initWithTitle:@"show" style:UIBarButtonItemStylePlain target:self action:@selector(showLeftView:)];
    
   TLWindow *window = (TLWindow *)[[UIApplication sharedApplication] keyWindow];
    window.selectIndex = ^(NSInteger index){
        _isShow = !_isShow;
        [self test:index];
        
        //如果想点击通过导航栏跳转到新的控制器也是可以在这里处理的
    };
}

///点击切换View显示
- (void)test:(NSInteger )index{
    
    if(index == -1){
        return;
    }
    
    [_firstVC.view removeFromSuperview];
        
    if(index == 0){
     
        [self.view addSubview:_firstVC.view];
        self.title = _firstVC.title;
        
        return;
    }
    
    if(index == 1){
        return;
    }
    
}
@end


