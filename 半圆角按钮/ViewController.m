//
//  ViewController.m
//  半圆角按钮
//
//  Created by yh on 15/10/13.
//  Copyright © 2015年 yh. All rights reserved.
//

#import "ViewController.h"
#import "MyLabel.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    
//    MyLabel *label = [[MyLabel alloc] initWithFrame:CGRectMake(50, 50, 100, 100)];
//    label.text = @"哈哈哈";
//    [self.view addSubview:label];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 150, 100);
    button.backgroundColor = [UIColor redColor];
    [self.view addSubview:button];
    
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:button.bounds byRoundingCorners:UIRectCornerTopLeft | UIRectCornerBottomLeft cornerRadii:CGSizeMake(50, 0)];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = button.bounds;
    maskLayer.path = maskPath.CGPath;
    button.layer.mask = maskLayer;
    button.layer.masksToBounds = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
