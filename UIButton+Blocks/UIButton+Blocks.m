//
//  UIButton+Block.m
//  DEMO7
//
//  Created by AcFun on 16/5/27.
//  Copyright © 2016年 J. All rights reserved.
//

#import "UIButton+Blocks.h"
#import <objc/runtime.h>
static char *overViewKey;

@implementation UIButton (Blocks)


-(void)handleClickWithClickBlock:(ActionBlock)buttonClickEvent{
    
    [self handleClickEvent:UIControlEventTouchUpInside withClickBlock:buttonClickEvent];

}

-(void)handleClickEvent:(UIControlEvents)aEvent withClickBlock:(ActionBlock)buttonClickEvent
{
    objc_setAssociatedObject(self, &overViewKey, buttonClickEvent, OBJC_ASSOCIATION_COPY_NONATOMIC);
    [self addTarget:self action:@selector(buttonClock) forControlEvents:aEvent];
}

-(void)buttonClock
{
    ActionBlock blockClick = objc_getAssociatedObject(self, &overViewKey);
    if (blockClick != nil)
    {
        blockClick(self);
    }
}




@end
