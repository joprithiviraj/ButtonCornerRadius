//
//  ViewController.m
//  ButtonCorner
//
//  Created by CompIndia on 16/12/16.
//  Copyright © 2016 JoPrithivi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:registerbtn.bounds byRoundingCorners:(UIRectCornerBottomRight) cornerRadii:CGSizeMake(10.0, 10.0)];
    
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.view.bounds;
    maskLayer.path  = maskPath.CGPath;
    registerbtn.layer.mask = maskLayer;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
