//
//  topRightCircle1.m
//  bezierPaths
//
//  Created by Nicholas Rogers on 5/1/15.
//  Copyright (c) 2015 Nicholas Rogers. All rights reserved.
//

#import "topRightCircle1.h"

@implementation topRightCircle1
@synthesize divDistance, lineWidth, lineColor;

#define PI 3.14159265359

#define DEGREES_TO_RADIANS(degrees) ((PI * degrees)/ 180)

-(id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    divDistance = 3;
    lineWidth = 5;
    
    UIBezierPath *bezPath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(self.center.x + divDistance, self.center.y - divDistance)
                                                           radius:50
                                                       startAngle:DEGREES_TO_RADIANS(270)
                                                         endAngle:DEGREES_TO_RADIANS(360)
                                                        clockwise:YES];
    
    [[UIColor redColor]setStroke];
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSaveGState(context);
    
    //bezPath.lineWidth = lineWidth;
    
    [bezPath stroke];
    
    CGContextRestoreGState(context);
    
}

@end
