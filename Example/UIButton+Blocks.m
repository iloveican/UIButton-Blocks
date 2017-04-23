//
//  UIButton+Block.m
//  DEMO7
//
//  Created by AcFun on 16/5/27.
//  Copyright © 2016年 J. All rights reserved.
//

#import "UIButton+Blocks.h"
#import <objc/message.h>
static char *overViewKey;

@implementation UIButton (Blocks)


-(void)handleClickWithClickBlick:(ActionBlock)buttonClickEvent{
    
    [self handleClickEvent:UIControlEventTouchUpInside withClickBlick:buttonClickEvent];

}

-(void)handleClickEvent:(UIControlEvents)aEvent withClickBlick:(ActionBlock)buttonClickEvent
{
    objc_setAssociatedObject(self, &overViewKey, buttonClickEvent, OBJC_ASSOCIATION_COPY_NONATOMIC);
    [self addTarget:self action:@selector(buttonClick) forControlEvents:aEvent];
}

-(void)buttonClick
{
    ActionBlock blockClick = objc_getAssociatedObject(self, &overViewKey);
    if (blockClick != nil)
    {
        blockClick(self);
    }
}




@end
