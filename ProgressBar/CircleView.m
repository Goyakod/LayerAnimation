//
//  CircleView.m
//  ProgressBar
//
//  Created by pro on 16/5/19.
//  Copyright © 2016年 Goyakod. All rights reserved.
//

#import "CircleView.h"

@interface CircleView()

@property (nonatomic,strong) CAShapeLayer *shapeLayer;

@end

@implementation CircleView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.shapeLayer = [CAShapeLayer layer];
        self.shapeLayer.frame = self.bounds;
        
        UIBezierPath *circle = [UIBezierPath bezierPathWithOvalInRect:self.bounds];
        self.shapeLayer.path = circle.CGPath;
        
        self.shapeLayer.lineWidth = 1.f;
        self.shapeLayer.fillColor = [UIColor clearColor].CGColor;
        self.shapeLayer.strokeColor = [UIColor blackColor].CGColor;
    
        [self.layer addSublayer:self.shapeLayer];
    }
    return self;
}

- (void)setValue:(CGFloat)value
{
    self.shapeLayer.strokeEnd = value;
}

- (void)setLineColor:(UIColor *)lineColor
{
    self.shapeLayer.strokeColor = lineColor.CGColor;
}

- (void)setLineWidth:(CGFloat)lineWidth
{
    self.shapeLayer.lineWidth = lineWidth;
}

- (void)setStartValue:(CGFloat)startValue
{
    self.shapeLayer.strokeEnd = startValue;
}

@end
