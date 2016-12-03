//
//  ViewController.m
//  LabelDelegate
//
//  Created by mac on 16/12/3.
//  Copyright © 2016年 CYC. All rights reserved.
//

#import "ViewController.h"
#import "CLabel.h"

@interface ViewController () <CLabelDeletage>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CLabel *label = [[CLabel alloc] initWithFrame:CGRectMake(0, 100, 300, 50)];
    label.text = @"这是一个cLabel";
    label.labelID = @"999";
    label.textColor = [UIColor orangeColor];
    label.delegate = self;
    [self.view addSubview:label];
    
    
}

- (void)cLabelTouch:(CLabel *)cLabel {

    NSLog(@"cLabel被点击拉");
    NSLog(@"%@", cLabel.labelID);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
