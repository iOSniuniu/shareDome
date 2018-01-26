//
//  ViewController.m
//  share
//
//  Created by apple on 2017/12/18.
//  Copyright © 2017年 牛道健. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIView *view;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    view = [[UIView alloc] initWithFrame:CGRectMake(100, 200, 100, 100)];
    view.clipsToBounds = YES;
    view.layer.cornerRadius = 50;
//    view.layer.borderColor = [UIColor grayColor].CGColor;
//    view.layer.borderWidth = 5;
    [self.view addSubview:view];
    
    UIBezierPath *shappath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(50, 50) radius:45 startAngle:0 endAngle:M_PI * 2 clockwise:YES];
    //[path stroke];
    CAShapeLayer *shapelayer = [[CAShapeLayer alloc] init];
    shapelayer.frame = view.bounds;
    //    layer.backgroundColor = [UIColor orangeColor].CGColor;
    shapelayer.path = shappath.CGPath;
    shapelayer.lineWidth = 5;
    shapelayer.fillColor = [UIColor whiteColor].CGColor;
    shapelayer.strokeColor = [UIColor grayColor].CGColor;
    [view.layer addSublayer:shapelayer];
    
   
}
- (IBAction)share:(id)sender {
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(50, 50) radius:45 startAngle:0 endAngle:M_PI * 2 clockwise:YES];
    //[path stroke];
    CAShapeLayer *layer = [[CAShapeLayer alloc] init];
    layer.frame = view.bounds;
    //    layer.backgroundColor = [UIColor orangeColor].CGColor;
    layer.path = path.CGPath;
    layer.lineWidth = 5;
    layer.strokeEnd = 0.0;
    layer.fillColor = [UIColor whiteColor].CGColor;
    layer.strokeColor = [UIColor redColor].CGColor;
    [view.layer addSublayer:layer];
    
    CABasicAnimation *animation = [[CABasicAnimation alloc] init];
    animation.keyPath = @"strokeEnd";
    animation.fromValue = @(0.0);
    animation.toValue = @(1.0);
    animation.duration = 2;
    animation.removedOnCompletion = NO;
    animation.fillMode = kCAFillModeForwards;

    [layer addAnimation:animation forKey:nil];
    
//    [UIView animateWithDuration:5 animations:^{
//        UIBezierPath *path1 = [UIBezierPath bezierPathWithArcCenter:CGPointMake(50, 50) radius:45 startAngle:0 endAngle:M_PI clockwise:YES];
//        //[path stroke];
//        //    layer.backgroundColor = [UIColor orangeColor].CGColor;
//        layer.path = path1.CGPath;
//        layer.lineWidth = 5;
//        layer.fillColor = [UIColor whiteColor].CGColor;
//        layer.strokeColor = [UIColor redColor].CGColor;
//    }];
//    NSString *string = @"您好";
//
//    UIActivityViewController *activityController = [[UIActivityViewController alloc] initWithActivityItems:@[string]
//                                                                                     applicationActivities:nil];
//
//    [self presentViewController:activityController
//                       animated:YES
//                     completion:nil];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
