//
//  ZXFRootViewController1.h
//  ZXFinancing
//
//  Created by zhangdong06 on 15/2/28.
//  Copyright (c) 2015年 百度在线. All rights reserved.
//

/*
 
 使用条件：
 1、需要在plist 文件中设置 View controller-based status bar appearance 属性为NO，默认是YES；

 2、window的rootViewController中或者AppDelegate 中重写如下两个方法
 - (UIStatusBarStyle)preferredStatusBarStyle
 {
     return UIStatusBarStyleLightContent;//设置statuBar的样式
 }
 - (BOOL)prefersStatusBarHidden
 {
     return self.isHideStatuBar; // 返回NO表示要显示，返回YES将hiden
 }
 
 3、显示和隐藏
 //1）显示状态栏
 [[ZXFRootViewController sharedInstance] showStatuBar];
 //2）隐藏状态栏
 [[ZXFRootViewController sharedInstance] hideStatuBar];
 

 注意：
 当个vc隐藏时候willDisAppear 或者 didDisAppear 中最好 调用下 showStatuBar
 
 备注：
 同时兼容ios6 及其以上版本
 
 */
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIResponder (HiddeStatuBar)

@property (nonatomic, assign) BOOL isHideStatuBar;

//隐藏状态栏
-(void)hideStatuBar;
-(void)showStatuBar;

@end
