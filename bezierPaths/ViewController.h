//
//  ViewController.h
//  bezierPaths
//
//  Created by Nicholas Rogers on 4/30/15.
//  Copyright (c) 2015 Nicholas Rogers. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "bezierFrame.h"
#import "bezierTriCircleView.h"

#import "bottomLeftCircle1.h"
#import "bottomRightCircle1.h"
#import "topLeftCircle1.h"
#import "topRightCircle1.h"
#import "bottomRightCircle2.h"
#import "bottomLeftCircle2.h"
#import "topLeftCircle2.h"
#import "topRightCircle2.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) UIView *animationFrame;

@property (strong, nonatomic) UIView *bottomLeftSeg1, *bottomRightSeg1, *topLeftSeg1, *topRightSeg1, *bottomLeftSeg2, *bottomRightSeg2, *topLeftSeg2, *topRightSeg2;

@end

