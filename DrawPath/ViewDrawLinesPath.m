//
//  ViewDrawLinesPath.m
//  DrawPath
//
//  Created by trunghoangdang on 5/17/16.
//  Copyright © 2016 trunghoangdang. All rights reserved.
//

#import "ViewDrawLinesPath.h"

IB_DESIGNABLE

@implementation ViewDrawLinesPath


- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(context, [UIColor blackColor].CGColor);
    CGContextSetFillColorWithColor(context, [UIColor grayColor].CGColor);
    CGContextSetLineWidth(context, 5);
    
    
    /*Vẽ hình vuông từ 4 điểm*/
    CGMutablePathRef path1 = CGPathCreateMutable();
    CGPoint line1[] = {{30,50}, {130,50}, {130,150}, {30, 150}};
    
    CGAffineTransform tm = CGAffineTransformIdentity;
    //    CGAffineTransform tm = CGAffineTransformMakeTranslation(20, 20);
    //    CGAffineTransform tm = CGAffineTransformMakeScale(2, 2);
    //    CGAffineTransform tm = CGAffineTransformMakeRotation(-M_PI/4);
    
    
    //    CGContextRotateCTM(context,M_PI_4);
    //    CGContextScaleCTM(context, 2, 2);
    
    CGPathAddLines(path1, &tm, line1, 4);
    CGPathCloseSubpath(path1);
    
    CGContextAddPath(context, path1);
    CGContextDrawPath(context, kCGPathStroke);
    
    
    /*Vẽ hình tam giác từ 3 điểm*/
    CGMutablePathRef path2 = CGPathCreateMutable();
    CGPoint line2[] = {{180,150}, {230,50}, {280,150}};
    CGPathAddLines(path2, &CGAffineTransformIdentity, line2, 3);
    CGPathCloseSubpath(path2);
    
    CGContextSetStrokeColorWithColor(context, [UIColor blackColor].CGColor);
    CGContextSetLineWidth(context, 5);
    CGContextAddPath(context, path2);
    CGContextDrawPath(context, kCGPathFill);
    
    
    
    /*Vẽ hình chữ nhật với 1 CGRect xác định trước*/
    CGMutablePathRef path3 = CGPathCreateMutable();
    
    CGRect rectangle = CGRectMake(60.0f, 180.0f, 200.0f, 100.0f);
    CGPathAddRect(path3, NULL, rectangle);
    CGContextAddPath(context, path3);
    
    CGContextDrawPath(context, kCGPathFillStroke);
    
    /*Vẽ hình Ellipse từ 1 CGRect xác định trước*/
    CGMutablePathRef path4 = CGPathCreateMutable();
    CGRect circleRect = CGRectMake(60, 300, 200, 100);
    CGPathAddEllipseInRect(path4, NULL, circleRect);
    CGContextAddPath(context, path4);
    CGContextDrawPath(context, kCGPathStroke);
    
    
    /*Vẽ ngôi sao 5 cánh*/
    CGMutablePathRef path5 = CGPathCreateMutable();
    CGPoint line5[] = {{160,430}, {220,550}, {100,470}, {220, 470}, {100,550}};
    
    CGPathAddLines(path5, NULL, line5, 5);
    CGPathCloseSubpath(path5);
    
    CGContextAddPath(context, path5);
    CGContextDrawPath(context, kCGPathEOFillStroke);
}


@end

















