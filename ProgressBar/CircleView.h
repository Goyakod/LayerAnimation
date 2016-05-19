//
//  CircleView.h
//  ProgressBar
//
//  Created by pro on 16/5/19.
//  Copyright © 2016年 Goyakod. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CircleView : UIView

@property (nonatomic,assign) CGFloat startValue;

@property (nonatomic,assign) CGFloat lineWidth;

@property (nonatomic,strong) UIColor *lineColor;

@property (nonatomic,assign) CGFloat value;

@end
