//
//  bottomLeftCircle1.h
//  bezierPaths
//
//  Created by Nicholas Rogers on 5/1/15.
//  Copyright (c) 2015 Nicholas Rogers. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface bottomLeftCircle1 : UIView {
    float divDistance;
    float lineWidth;
    UIColor *lineColor;
}

@property (readwrite, nonatomic) float divDistance;
@property (readwrite, nonatomic) float lineWidth;
@property (strong, nonatomic) UIColor *lineColor;

@end
