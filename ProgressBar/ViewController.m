//
//  ViewController.m
//  ProgressBar
//
//  Created by pro on 16/5/18.
//  Copyright © 2016年 Goyakod. All rights reserved.
//

#import "ViewController.h"
#import "ProgressView.h"
#import "CircleView.h"

@interface ViewController ()

@property (nonatomic,strong) ProgressView *progressBar;

@property (nonatomic,strong) CircleView *circleView;

@property (nonatomic,strong) NSTimer *timer;

@property (nonatomic,strong) CALayer *imageLayer;

@property (nonatomic,strong) CALayer *maskLayer;

@property (nonatomic,strong) CAShapeLayer *shapeLayer;

@property (nonatomic,strong) CAGradientLayer *gradientLayer;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    //进度条
//    self.progressBar = [[ProgressView alloc] initWithFrame:CGRectMake(100, 100, 150, 5)];
//    self.progressBar.backgroundColor = [UIColor grayColor];
//    [self.view addSubview:self.progressBar];
//    
//    [self performSelector:@selector(layerAnimation) withObject:nil afterDelay:1.f];
//    
//    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(layerAnimation) userInfo:nil repeats:YES];

    //图片渐变切换动画
//    UIImage *image1 = [UIImage imageNamed:@"1.jpg"];
//
//    self.imageLayer = [CALayer layer];
//    self.imageLayer.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
//    [self.view.layer addSublayer:self.imageLayer];
//    
//    self.imageLayer.contents = (__bridge id _Nullable)([image1 CGImage]);
    
//    [self performSelector:@selector(imageLayerAnimation) withObject:nil afterDelay:3.f];
    
    //设置复杂遮罩效果
//    UIImage *maskImage = [UIImage imageNamed:@"mask2"];
//    self.maskLayer = [CALayer layer];
//    self.maskLayer.frame = self.imageLayer.frame;
//    self.maskLayer.contents = (__bridge id _Nullable)(maskImage.CGImage);
//    
//    self.imageLayer.mask = self.maskLayer;
    
    //贝塞尔曲线
//    UIBezierPath *oval = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 200, 100)];
//    UIBezierPath *path = [UIBezierPath bezierPathWithRect:CGRectMake(0, 0, 200, 100)];
//    UIBezierPath *circle = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 100, 100)];
//    
//    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
//    shapeLayer.frame = CGRectMake(0, 0, 200, 100);
//    shapeLayer.position = self.view.center;
//    shapeLayer.fillColor = [UIColor whiteColor].CGColor;
//    shapeLayer.strokeColor = [UIColor blackColor].CGColor;
//    shapeLayer.path = circle.CGPath;
//    //贝塞尔曲线的frame值尽量不要超出shapelayer的frame值
//    shapeLayer.borderWidth = 1.f;
//    shapeLayer.masksToBounds = YES;
//    
//    [self.view.layer addSublayer:shapeLayer];
    
    
    //CircleAnimation
//    self.shapeLayer = [CAShapeLayer layer];
//    self.shapeLayer.frame = CGRectMake(0, 0, 200, 200);
//    self.shapeLayer.position = self.view.center;
//    self.shapeLayer.fillColor = [UIColor clearColor].CGColor;
//    self.shapeLayer.strokeColor = [UIColor blackColor].CGColor;
//    self.shapeLayer.lineWidth = 1.f;
//    
//    self.shapeLayer.strokeStart = 0;
//    self.shapeLayer.strokeEnd = 0;
//    
//    UIBezierPath *circle = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 200, 200)];
//    
//    self.shapeLayer.path = circle.CGPath;
//    
//    [self.view.layer addSublayer:self.shapeLayer];
//    
//    self.timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(strokeAnimation2) userInfo:nil repeats:YES];

    
    //Circle View 控件
//    self.circleView = [[CircleView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
//    self.circleView.center = self.view.center;
//    self.circleView.lineColor = [UIColor redColor];
//    self.circleView.lineWidth = 3.f;
//    self.circleView.startValue = 0.25;
//    [self.view addSubview:self.circleView];
//    
//    [self performSelector:@selector(circleViewAnimation) withObject:nil afterDelay:3.f];

    
    //GradientLayer 坐标系统
    
//    self.gradientLayer = [CAGradientLayer layer];
//    self.gradientLayer.frame = CGRectMake(0, 0, 200, 200);
//    self.gradientLayer.position = self.view.center;
//    self.gradientLayer.borderWidth = 1.f;
//    
//    [self.view.layer addSublayer:self.gradientLayer];
//    
//    self.gradientLayer.colors = @[(__bridge id)[UIColor redColor].CGColor,
//                                  (__bridge id)[UIColor greenColor].CGColor,
//                                  (__bridge id)[UIColor blueColor].CGColor];
//    
//    self.gradientLayer.startPoint = CGPointMake(0, 0);
//    self.gradientLayer.endPoint = CGPointMake(1, 0);
//    
//    //颜色分割的
//    self.gradientLayer.locations = @[@(0.2),@(0.5),@(0.8)];
    
    
    //色差效果实现：
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"1.jpg"]];
    imageView.center = self.view.center;
    [self.view addSubview:imageView];
    
    self.gradientLayer = [CAGradientLayer layer];
    self.gradientLayer.frame = imageView.bounds;
    self.gradientLayer.startPoint = CGPointMake(0, 0);
    self.gradientLayer.endPoint = CGPointMake(0, 1);
    
    self.gradientLayer.colors = @[(__bridge id)[UIColor clearColor].CGColor,
                                  (__bridge id)[UIColor redColor].CGColor];
    
    self.gradientLayer.locations = @[@(0.5),@(1.f)];
    
    [imageView.layer addSublayer:self.gradientLayer];
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(gradientLayerAnimation) userInfo:nil repeats:YES];
    
}

- (void)gradientLayerAnimation
{
    self.gradientLayer.colors = @[(__bridge id)[UIColor clearColor].CGColor,
                                  (__bridge id)[UIColor colorWithRed:arc4random()%255/255.f green:arc4random()%255/255.f blue:arc4random()%255/255.f alpha:1].CGColor];
    
    self.gradientLayer.locations = @[@(arc4random()%10/10.f),@(1.f)];
}

- (void)circleViewAnimation
{
    self.circleView.value = 1;
}

- (void)strokeAnimation1
{
    self.shapeLayer.strokeEnd = arc4random()%100/100.f;
}

- (void)strokeAnimation2
{
    CGFloat value1 = arc4random()%100/100.f;
    CGFloat value2 = arc4random()%100/100.f;
    
    self.shapeLayer.strokeStart = value1 > value2 ? value2 :value1;
    self.shapeLayer.strokeEnd = value1 > value2 ? value1 : value2;
    
}

- (void)imageLayerAnimation
{
    UIImage *image2 = [UIImage imageNamed:@"2.jpg"];
    
    CABasicAnimation *contentAnimation = [CABasicAnimation animationWithKeyPath:@"contents"];
    contentAnimation.fromValue = self.imageLayer.contents;
    contentAnimation.toValue = (__bridge id _Nullable)([image2 CGImage]);
    contentAnimation.duration = 3.f;
    
    self.imageLayer.contents = (__bridge id _Nullable)([image2 CGImage]);
    
    [self.imageLayer addAnimation:contentAnimation forKey:nil];
    
}

- (void)layerAnimation
{
    self.progressBar.progress = arc4random() % 100 / 100.f;
    
}

@end
