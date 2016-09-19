//
//  FirstViewController.m
//  block传值(2)
//
//  Created by CHEUNGYuk Hang Raymond on 16/9/18.
//  Copyright © 2016年 CHEUNGYuk Hang Raymond. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
}

- (void)buttonClick {
    
    SecondViewController *second = [[SecondViewController alloc] init];
    second.block = ^(NSString *text) {
        self.label.text = text;
    };
    
    [self.navigationController pushViewController:second animated:YES];
}

@end
