//
//  ViewController.m
//  bezierPaths
//
//  Created by Nicholas Rogers on 4/30/15.
//  Copyright (c) 2015 Nicholas Rogers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize animationFrame, bottomRightSeg1, bottomLeftSeg1, topLeftSeg1, topRightSeg1, bottomRightSeg2, bottomLeftSeg2, topLeftSeg2, topRightSeg2;

#define PI 3.14159265359

#define DEGREES_TO_RADIANS(degrees) ((PI * degrees)/ 180)

-(CABasicAnimation *)segRotateAnimationWithDuration:(float)time reverse:(BOOL)reverses {
    CABasicAnimation *rotate = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    if (reverses)
        rotate.toValue = [NSNumber numberWithFloat:-M_PI * 2.0];
    else
        rotate.toValue = [NSNumber numberWithFloat:M_PI * 2.0];
    rotate.duration = time;
    rotate.cumulative = YES;
    rotate.repeatCount = INFINITY;
    return rotate;
}

-(void)moveObjectsOn {
    
    bottomLeftSeg2.center = self.view.center;
    bottomRightSeg2.center = self.view.center;
    topLeftSeg2.center = self.view.center;
    topRightSeg2.center = self.view.center;
    
    float time = 1.0;
    float damping = 0.8;
    float velocity = 0.9;
    [UIView animateWithDuration:time
                          delay:0.0
         usingSpringWithDamping:damping
          initialSpringVelocity:velocity
                        options:UIViewAnimationOptionCurveLinear
     //Begin layer 1
                     animations:^{
                         bottomRightSeg1.center = self.view.center;
                         topLeftSeg1.center = self.view.center;
                     }
     //Begin layer 2
                     completion:^(BOOL finished) {
                         [UIView animateWithDuration:time
                                               delay:0.0
                              usingSpringWithDamping:damping
                               initialSpringVelocity:velocity
                                             options:UIViewAnimationOptionCurveLinear
                                          animations:^{
                                              topRightSeg1.center = CGPointMake(20, 20);
                                              bottomLeftSeg1.center = self.view.center;
                                          }
                                          completion:^(BOOL finished) {
                                          }];
                     }];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    animationFrame = [[bezierFrame alloc]initWithFrame:self.view.frame];
    //[self.view addSubview:animationFrame];
    
    /*
    UIView *circleView = [[bezierTriCircleView alloc]initWithFrame:self.view.frame];
    circleView.center = self.view.center;
    [self.view addSubview:circleView];
     */
    
    float dist = 1.5;
    bottomRightSeg1 = [[bottomRightCircle1 alloc]initWithFrame:self.view.frame];
    //bottomRightSeg1.center = CGPointMake(self.view.center.x * dist, self.view.center.y * dist);
    [self.view addSubview:bottomRightSeg1];
    
    bottomLeftSeg1 = [[bottomLeftCircle1 alloc]initWithFrame:self.view.frame];
    //bottomLeftSeg1.center = CGPointMake(self.view.center.x * -dist, self.view.center.y * dist);
    [self.view addSubview:bottomLeftSeg1];
    
    topLeftSeg1 = [[topLeftCircle1 alloc]initWithFrame:self.view.frame];
    //topLeftSeg1.center = CGPointMake(self.view.center.x * -dist, self.view.center.y * -dist);
    [self.view addSubview:topLeftSeg1];
    
    topRightSeg1 = [[topRightCircle1 alloc]initWithFrame:self.view.frame];
    //topRightSeg1.center = CGPointMake(self.view.center.x * dist, self.view.center.y * -dist);
    [self.view addSubview:topRightSeg1];
    
    bottomRightSeg2 = [[bottomRightCircle2 alloc]initWithFrame:self.view.frame];
    //bottomRightSeg2.center = CGPointMake(self.view.center.x * dist, self.view.center.y * dist);
    [self.view addSubview:bottomRightSeg2];
    
    bottomLeftSeg2 = [[bottomLeftCircle2 alloc]initWithFrame:self.view.frame];
    //bottomLeftSeg2.center = CGPointMake(self.view.center.x * -dist, self.view.center.y * dist);
    [self.view addSubview:bottomLeftSeg2];
    
    topLeftSeg2 = [[topLeftCircle2 alloc]initWithFrame:self.view.frame];
    //topLeftSeg2.center = CGPointMake(self.view.center.x * -dist, self.view.center.y * -dist);
    [self.view addSubview:topLeftSeg2];
    
    topRightSeg2 = [[topRightCircle2 alloc]initWithFrame:self.view.frame];
    //topRightSeg2.center = CGPointMake(self.view.center.x * dist, self.view.center.y * -dist);
    [self.view addSubview:topRightSeg2];
    
    self.view.backgroundColor = [UIColor blackColor];
    
    //[self moveObjectsOn];
    
    //Set up animations//
    
    
    
    //Version 1
    /*
    [bottomLeftSeg1.layer addAnimation:[self segRotateAnimationWithDuration:2.0 reverse:NO] forKey:@"rotationAnimation"];
    
    [bottomRightSeg1.layer addAnimation:[self segRotateAnimationWithDuration:2.0 reverse:YES] forKey:@"rotationAnimation"];

    [topLeftSeg1.layer addAnimation:[self segRotateAnimationWithDuration:2.0 reverse:YES] forKey:@"rotationAnimation"];

    [topRightSeg1.layer addAnimation:[self segRotateAnimationWithDuration:2.0 reverse:NO] forKey:@"rotationAnimation"];

    [bottomRightSeg2.layer addAnimation:[self segRotateAnimationWithDuration:2.0 reverse:YES] forKey:@"rotationAnimation"];
    
    [bottomLeftSeg2.layer addAnimation:[self segRotateAnimationWithDuration:2.0 reverse:NO] forKey:@"rotationAnimation"];
    
    [topLeftSeg2.layer addAnimation:[self segRotateAnimationWithDuration:2.0 reverse:NO] forKey:@"rotationAnimation"];
    
    [topRightSeg2.layer addAnimation:[self segRotateAnimationWithDuration:2.0 reverse:YES] forKey:@"rotationAnimation"];
    
    [bottomLeftSeg1.layer addAnimation:[self segRotateAnimationWithDuration:2.0 reverse:NO] forKey:@"rotationAnimation"];
    
    [bottomRightSeg1.layer addAnimation:[self segRotateAnimationWithDuration:2.0 reverse:YES] forKey:@"rotationAnimation"];
    
    [topLeftSeg1.layer addAnimation:[self segRotateAnimationWithDuration:2.0 reverse:YES] forKey:@"rotationAnimation"];
    
    [topRightSeg1.layer addAnimation:[self segRotateAnimationWithDuration:2.0 reverse:NO] forKey:@"rotationAnimation"];
    
    [bottomRightSeg2.layer addAnimation:[self segRotateAnimationWithDuration:2.0 reverse:YES] forKey:@"rotationAnimation"];
    
    [bottomLeftSeg2.layer addAnimation:[self segRotateAnimationWithDuration:2.0 reverse:NO] forKey:@"rotationAnimation"];
    
    [topLeftSeg2.layer addAnimation:[self segRotateAnimationWithDuration:2.0 reverse:YES] forKey:@"rotationAnimation"];
    
    [topRightSeg2.layer addAnimation:[self segRotateAnimationWithDuration:2.0 reverse:NO] forKey:@"rotationAnimation"];
    */
    /*
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    [UIView setAnimationRepeatCount:INFINITY];
    
    CGAffineTransform transform = CGAffineTransformMakeRotation(M_PI * 2.00);
    bottomRightSeg1.transform = transform;
    
    [UIView commitAnimations];
     */
        
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
