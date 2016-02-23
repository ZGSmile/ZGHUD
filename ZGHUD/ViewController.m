//
//  ViewController.m
//  ZGHUD
//
//  Created by mac_zhu on 25/1/16.
//  Copyright (c) 2016年 mac_zhu. All rights reserved.
//

//#define ScreenWidth [UIScreen mainScreen].bounds.size.width
//#define ScreenHeight [UIScreen mainScreen].bounds.size.height
//#define ScreenBounds [UIScreen mainScreen].bounds
//#define BarHeight 20
//#define NVHeight 44
//#define TBHeight 44
//#define BackgroundColor [UIColor colorWithRed:226.0/255.0 green:226.0/255.0 blue:226.0/255.0 alpha:1]

#import "ViewController.h"
#import "CLProgress.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // hud展示效果
    CLProgressHUD *progressHud = [CLProgressHUD shareInstance];
    progressHud.refreshLabel.text = @"查询中...";
    [[CLProgressHUD shareInstance] shows];
    
    [[CLProgressHUD shareInstance] dismiss];
}
- (IBAction)showHudAction:(UIButton *)sender {
    sender.selected =!sender.selected;
    if (sender.selected) {
        [[CLProgressHUD shareInstance] shows];
        
    }else{
        [[CLProgressHUD shareInstance] dismiss];
        
    }
    CLProgressHUD *progressHud = [CLProgressHUD shareInstance];
    progressHud.refreshLabel.text = @"加载中...";
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [[CLProgressHUD shareInstance] dismiss];
}
@end
