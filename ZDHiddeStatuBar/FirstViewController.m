//
//  FirstViewController.m
//  ZDHiddeStatuBar
//
//  Created by zhangdong06 on 15/2/28.
//  Copyright (c) 2015年 zandereric. All rights reserved.
//

#import "FirstViewController.h"
#import "UIResponder+HiddeStatuBar.h"
/*
 FirstViewController时候隐藏状态栏， SecondViewController时候显示状态栏
 */
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [[UIApplication sharedApplication] hideStatuBar];
}


-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [[UIApplication sharedApplication] showStatuBar];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
