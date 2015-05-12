//
//  bezierFrame.m
//  bezierPaths
//
//  Created by Nicholas Rogers on 4/30/15.
//  Copyright (c) 2015 Nicholas Rogers. All rights reserved.
//

#import "bezierFrame.h"

@implementation bezierFrame

-(id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 2.0);
    
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    
    CGFloat components[] = {0.0, 0.0, 1.0, 1.0};
    CGColorRef color = CGColorCreate(colorSpace, components);
    
    CGContextSetStrokeColorWithColor(context, color);
    CGContextMoveToPoint(context, 100, 100);
    CGContextAddLineToPoint(context, 100, 200);
    CGContextAddLineToPoint(context, 200, 200);
    CGContextAddLineToPoint(context, 200, 100);
    CGContextAddLineToPoint(context, 100, 100);
    
    CGContextStrokePath(context);
    CGColorSpaceRelease(colorSpace);
    CGColorRelease(color);
}

@end
