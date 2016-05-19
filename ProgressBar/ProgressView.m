//
//  ProgressView.m
//  ProgressBar
//
//  Created by pro on 16/5/18.
//  Copyright © 2016年 Goyakod. All rights reserved.
//

#import "ProgressView.h"

@interface ProgressView()

@property (nonatomic,strong) CALayer *progressLayer;

@property (nonatomic,assign) CGFloat currentViewWidth;

@end

@implementation ProgressView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.progressLayer = [CALayer layer];
        self.progressLayer.frame = CGRectMake(0, 0, 0, frame.size.height);
        self.progressLayer.backgroundColor = [UIColor redColor].CGColor;
        [self.layer addSublayer:self.progressLayer];
        self.currentViewWidth = frame.size.width;
    }
    return self;
}


- (void)setProgress:(CGFloat)progress
{
    if (progress <= 0) {
        self.progressLayer.frame = CGRectMake(0, 0, 0, self.frame.size.height);
    }else if (progress <= 1){
        self.progressLayer.frame = CGRectMake(0, 0, progress*self.currentViewWidth, self.frame.size.height);
    }else{
        self.progressLayer.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    }
}

- (CGFloat)progress
{
    return self.progress;
}


@end
