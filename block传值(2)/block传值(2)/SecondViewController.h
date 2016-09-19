//
//  SecondViewController.h
//  block传值(2)
//
//  Created by CHEUNGYuk Hang Raymond on 16/9/18.
//  Copyright © 2016年 CHEUNGYuk Hang Raymond. All rights reserved.
//

#import <UIKit/UIKit.h>

/** 定义一个block */
typedef void(^blockName)(NSString *text);

@interface SecondViewController : UIViewController


//block在ARC中使用strong，非ARC中使用copy
@property (nonatomic, strong) blockName block;

@end
