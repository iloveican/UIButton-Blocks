# UIButton-Blocks
=============

An UIButton Category replace SEL with Block.


## Features

- block syntax

## Installation

### Cocoapods(Recommended)

1. Add `pod 'UIButton+Blocks'` to your Podfile.
2. Run `pod install`

### Manual

1. Add all files under `UIButton+Blocks/UIButton+Blocks` to your project

## Requirements

- iOS 5.0 and greater
- ARC/MRC


## Examples

**Code:**

```objc

    UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake((MDScreenWidth-100)*0.5, (MDScreenHeight-100)*0.5, 100, 100);
    [self.view addSubview:button];
    
    button.backgroundColor = [[UIColor orangeColor] colorWithAlphaComponent:0.8];
    [button setTitle:@"Blocks" forState:UIControlStateNormal];

    //default UIControlEventTouchUpInside
    [button handleClickWithClickBlick:^(UIButton *sender) {
        NSLog(@"%s",__func__);

    }];
    
    
    /*
     [button handleClickEvent:UIControlEventTouchUpInside withClickBlick:^(UIButton *sender) {
     NSLog(@"%s",__func__);
     }];
     */
     
```

## Credits

SIAlertView was created by [Jiang.Zijia](https://github.com/JZJJZJ) in the development of [MOMO](https://www.immomo.com).

## License

SIAlertView is available under the MIT license. See the LICENSE file for more info.
