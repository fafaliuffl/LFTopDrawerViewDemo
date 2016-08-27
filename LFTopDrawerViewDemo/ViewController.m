//
//  ViewController.m
//  LFTopDrawerViewDemo
//
//  Created by 刘雨笛 on 16/8/27.
//  Copyright © 2016年 刘雨笛. All rights reserved.
//

#import "ViewController.h"

#import "LFTopDrawerViewController.h"

@interface ViewController ()<UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = [UIColor yellowColor];
    UITableView *view2 = [[UITableView alloc] init];
    view2.backgroundColor = [UIColor redColor];
    view2.dataSource = self;
    LFTopDrawerViewController *viewcontroller = [[LFTopDrawerViewController alloc] initWithTopView:view withBottomView:view2];
    [self presentViewController:viewcontroller animated:YES completion:^{
    }];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"lalal"];
    UILabel *laad = [[UILabel alloc] init];
    laad.frame = CGRectMake(0, 0, 40, 300);
    laad.text = @"adsfjakdsjf ";
    [cell addSubview:laad];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
