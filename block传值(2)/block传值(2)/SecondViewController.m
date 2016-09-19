//
//  SecondViewController.m
//  block传值(2)
//
//  Created by CHEUNGYuk Hang Raymond on 16/9/18.
//  Copyright © 2016年 CHEUNGYuk Hang Raymond. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (void)viewWillDisappear:(BOOL)animated {
    
    [super viewWillDisappear:animated];
    
    //判断block是否为空
    if (_block) {
        _block(self.textField.text);
    }
}

@end
