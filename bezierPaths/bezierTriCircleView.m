//
//  bezierTriCircleView.m
//  bezierPaths
//
//  Created by Nicholas Rogers on 5/1/15.
//  Copyright (c) 2015 Nicholas Rogers. All rights reserved.
//

#import "bezierTriCircleView.h"

@implementation bezierTriCircleView

#define PI 3.14159265359

#define DEGREES_TO_RADIANS(degrees) ((PI * degrees)/ 180)

-(id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor blackColor];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    float divDistance = 3;
    
    //Layer 1
    UIBezierPath *bezPath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(self.center.x + divDistance, self.center.y + divDistance)
                                                           radius:50
                                                       startAngle:0
                                                         endAngle:DEGREES_TO_RADIANS(90)
                                                        clockwise:YES];
    UIBezierPath *bottomLeftPath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(self.center.x - divDistance, self.center.y + divDistance)
                                                                  radius:50
                                                              startAngle:DEGREES_TO_RADIANS(90)
                                                                endAngle:DEGREES_TO_RADIANS(180)
                                                               clockwise:YES];
    UIBezierPath *topLeftPath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(self.center.x - divDistance, self.center.y - divDistance)
                                                               radius:50
                                                           startAngle:DEGREES_TO_RADIANS(180)
                                                             endAngle:DEGREES_TO_RADIANS(270)
                                                            clockwise:YES];
    UIBezierPath *topRightPath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(self.center.x + divDistance, self.center.y - divDistance)
                                                                radius:50
                                                            startAngle:DEGREES_TO_RADIANS(270)
                                                              endAngle:DEGREES_TO_RADIANS(360)
                                                             clockwise:YES];
    
    //Layer 2
    
    UIBezierPath *bottomRightPath2 = [UIBezierPath bezierPathWithArcCenter:CGPointMake(self.center.x + divDistance, self.center.y + divDistance)
                                                                 radius:100
                                                             startAngle:0
                                                               endAngle:DEGREES_TO_RADIANS(90)
                                                                 clockwise:YES];
    UIBezierPath *bottomLeftPath2 = [UIBezierPath bezierPathWithArcCenter:CGPointMake(self.center.x - divDistance, self.center.y + divDistance)
                                                                   radius:100
                                                               startAngle:DEGREES_TO_RADIANS(90)
                                                                 endAngle:DEGREES_TO_RADIANS(180)
                                                                clockwise:YES];
    UIBezierPath *topLeftPath2 = [UIBezierPath bezierPathWithArcCenter:CGPointMake(self.center.x - divDistance, self.center.y - divDistance)
                                                                radius:100
                                                            startAngle:DEGREES_TO_RADIANS(180)
                                                              endAngle:DEGREES_TO_RADIANS(270)
                                                             clockwise:YES];
    UIBezierPath *topRightPath2 = [UIBezierPath bezierPathWithArcCenter:CGPointMake(self.center.x + divDistance, self.center.y - divDistance)
                                                                radius:100
                                                            startAngle:DEGREES_TO_RADIANS(270)
                                                              endAngle:DEGREES_TO_RADIANS(360)
                                                             clockwise:YES];
    
    [[UIColor redColor]setStroke];
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSaveGState(context);
    
    float lineWidth = 5.0;
    
    bezPath.lineWidth = lineWidth;
    //bottomLeftPath.lineWidth = lineWidth;
    topLeftPath.lineWidth = lineWidth;
    //topRightPath.lineWidth = lineWidth;
    //bottomRightPath2.lineWidth = lineWidth;
    bottomLeftPath2.lineWidth = lineWidth;
    //topLeftPath2.lineWidth = lineWidth;
    topRightPath2.lineWidth = lineWidth;
    
    [bezPath stroke];
    [bottomLeftPath stroke];
    [topLeftPath stroke];
    [topRightPath stroke];
    [bottomRightPath2 stroke];
    [bottomLeftPath2 stroke];
    [topLeftPath2 stroke];
    [topRightPath2 stroke];
    
    CGContextRestoreGState(context);
    
}

@end
