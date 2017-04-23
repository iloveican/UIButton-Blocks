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
    @property(nonatomic,strong)UIButton* button;
    @end

@implementation ViewController
    
    
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"touchesBegan to SwiftVC";
    [self.view addSubview:self.button];
    
    //default UIControlEventTouchUpInside
    [self.button handleClickWithClickBlick:^(UIButton *sender) {
        NSLog(@"ViewController %s",__func__);
        
    }];
    
    /*
     [self.button handleClickEvent:UIControlEventTouchUpInside withClickBlick:^(UIButton *sender) {
     NSLog(@"%s",__func__);
     }];
     */
}
    
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.navigationController pushViewController:[SwiftViewController new] animated:YES];
}
    
    
- (UIButton *)button{
    if(!_button){
        
        UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake((MDScreenWidth-100)*0.5, (MDScreenHeight-100)*0.5, 100, 100);
        [self.view addSubview:button];
        button.titleLabel.numberOfLines = 0;
        button.titleLabel.textAlignment = NSTextAlignmentCenter;
        button.backgroundColor = [[UIColor orangeColor] colorWithAlphaComponent:0.8];
        [button setTitle:@"Objective-C Button" forState:UIControlStateNormal];
        
        _button = button;
    }
    return _button;
}
    
    @end
