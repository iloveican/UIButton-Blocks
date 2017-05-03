//
//  UIButton+Block.h
//  DEMO7
//
//  Created by AcFun on 16/5/27.
//  Copyright © 2016年 J. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^ActionBlock)(UIButton* sender);

@interface UIButton (Blocks)

-(void)handleClickEvent:(UIControlEvents)aEvent withClickBlock:(ActionBlock)buttonClickEvent;

/*
 default UIControlEventTouchUpInside
 */
-(void)handleClickWithClickBlock:(ActionBlock)buttonClickEvent;

@end
