//
//  SecondViewController.m
//  LeftSwipDemo
//
//  Created by tianlei on 16/11/4.
//  Copyright © 2016年 tianlei. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"第二个控制器";
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, [UIScreen mainScreen].bounds.size.height-64)];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    
    [self.view addSubview:_tableView];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CELL"];
    cell.textLabel.text = @"测试一下View2";
    return cell;
}



@end
