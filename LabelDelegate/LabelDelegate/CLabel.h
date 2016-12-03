//
//  CLabel.h
//  LabelDelegate
//
//  Created by mac on 16/12/3.
//  Copyright © 2016年 CYC. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CLabel;

@protocol CLabelDeletage <NSObject>

- (void)cLabelTouch:(CLabel *)cLabel;

@end


@interface CLabel : UILabel


@property (weak, nonatomic) id<CLabelDeletage> delegate;
@property (copy, nonatomic) NSString *labelID;


@end
