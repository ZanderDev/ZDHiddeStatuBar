//
//  ZXFRootViewController1.m
//  ZXFinancing
//
//  Created by zhangdong06 on 15/2/28.
//  Copyright (c) 2015年 百度在线. All rights reserved.
//

#import "UIResponder+HiddeStatuBar.h"
#import <objc/runtime.h>

static const void *isHideStatuBarKey = &isHideStatuBarKey;


@implementation UIResponder (HiddeStatuBar)

#pragma mark public
//隐藏状态栏
-(void)hideStatuBar{
        [self setStatuBarIsHidden:YES];
}
//显示状态栏
-(void)showStatuBar{
    [self setStatuBarIsHidden:NO];
}


#pragma mark private

//设置是否隐藏状态栏
-(void)setStatuBarIsHidden:(BOOL)isHideStatuBar{
    
    self.isHideStatuBar = isHideStatuBar;
    
    if ([self respondsToSelector:@selector(setNeedsStatusBarAppearanceUpdate)]) {
        //ios7以上
        [self performSelector:@selector(setNeedsStatusBarAppearanceUpdate)];
    }else{
        //ios7以下
        [[UIApplication sharedApplication] setStatusBarHidden:isHideStatuBar withAnimation:UIStatusBarAnimationNone];
    }
}


#pragma mark 属性添加

-(BOOL)isHideStatuBar{
    
    BOOL isHideStatuBar = NO;
    NSNumber *obj = objc_getAssociatedObject(self, isHideStatuBarKey);
    if (nil != obj) {
        isHideStatuBar = [obj boolValue];
    }else{
        //初始化值
        isHideStatuBar = NO;
        [self setIsHideStatuBar:isHideStatuBar];
    }
    return isHideStatuBar;
}
-(void)setIsHideStatuBar:(BOOL)isHideStatuBar{
    objc_setAssociatedObject(self, isHideStatuBarKey, [NSNumber numberWithBool:isHideStatuBar], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}



@end
