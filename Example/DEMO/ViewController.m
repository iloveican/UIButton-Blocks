//
//  ViewController.m
//  DEMO
//
//  Created by MOMO on 2017/4/23.
//  Copyright © 2017年 MOMO. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+Blocks.h"
#import "DEMO-Swift.h"

#define MDScreenWidth     CGRectGetWidth([[UIScreen mainScreen] bounds])
#define MDScreenHeight    CGRectGetHeight([[[UIApplication sharedApplication].delegate window] bounds])
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake((MDScreenWidth-100)*0.5, (MDScreenHeight-100)*0.5, 100, 100);
    [self.view addSubview:button];
    
    button.backgroundColor = [[UIColor orangeColor] colorWithAlphaComponent:0.8];
    [button setTitle:@"toSwiftVC" forState:UIControlStateNormal];

    //default UIControlEventTouchUpInside
    [button handleClickWithClickBlick:^(UIButton *sender) {
        NSLog(@"%s",__func__);
        [self.navigationController pushViewController:[SwiftViewController new] animated:YES];

    }];
    
    
    
    /*
     [button handleClickEvent:UIControlEventTouchUpInside withClickBlick:^(UIButton *sender) {
     NSLog(@"%s",__func__);
     }];
     */
}



@end
