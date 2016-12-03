//
//  CLabel.m
//  LabelDelegate
//
//  Created by mac on 16/12/3.
//  Copyright © 2016年 CYC. All rights reserved.
//

#import "CLabel.h"

@interface CLabel ()

@property (strong, nonatomic) UIColor *cColor;  // 记录初始颜色,以便触摸结束后还能显示原始颜色

@end

@implementation CLabel

- (instancetype)initWithFrame:(CGRect)frame {

    self = [super initWithFrame:frame];
    if (self != nil) {
        // 打开交互
        self.userInteractionEnabled = YES;
    }
    return self;

}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

    self.cColor = self.textColor;
    self.textColor = [UIColor lightGrayColor];

}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

    self.textColor = _cColor;
    
    // 执行代理方法,传递数据
    [_delegate cLabelTouch:self];

}


#pragma mark - 懒加载
- (UIColor *)cColor {

    if (_cColor == nil) {
        _cColor = [UIColor clearColor];
    }
    return _cColor;

}

@end
