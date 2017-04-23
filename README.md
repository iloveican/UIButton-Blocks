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

     
     ## Swift   
     You can use UIButton+Blocks in Swift projects too.
     To do this, you must:
1. Copy the relevant .m and .h files from the UIButton+Blocks src folder into your project
2. If prompted to create a "bridging header", you should do so. If not prompted and if you don't already have a bridging     header, add one.
3. In your bridging header, add a line that says:
     
    ```objc
    #import "UIButton+Blocks.h"
    ```

    If you do the above, you can then write Swift code that uses UIButton+Blocks. For example, in Swift 3:
     
     
     
   ```swift
        let btn = UIButton(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: 100, height: 100)))
        btn.center = view.center
        btn.backgroundColor = UIColor.purple
        btn.setTitle("SwiftVC", for: UIControlState.normal)
        view.addSubview(btn)
        
        btn.handleClick { (btn:UIButton?) in
            print("\("SwiftViewController") \(#function)")
            
        }
   ```

     


## Credits

SIAlertView was created by [Jiang.Zijia](https://github.com/JZJJZJ) in the development of [MOMO](https://www.immomo.com).

## License

SIAlertView is available under the MIT license. See the LICENSE file for more info.
