//
//  bezierCurveView.m
//  bezierPaths
//
//  Created by Nicholas Rogers on 5/1/15.
//  Copyright (c) 2015 Nicholas Rogers. All rights reserved.
//

#import "bezierCurveView.h"

@implementation bezierCurveView

#define pi 3.14159265359

#define DEGREES_TO_RADIANS(degrees) ((pi * degrees)/ 180)

-(id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
}

@end
