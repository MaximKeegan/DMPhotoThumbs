//
//  DMPhotoThumbsStyleKit.m
//  DMPhotoThumbs
//
//  Created by Dmitry Avvakumov on 02.11.15.
//  Copyright (c) 2015 none. All rights reserved.
//
//  Generated by PaintCode (www.paintcodeapp.com)
//

#import "DMPhotoThumbsStyleKit.h"


@implementation DMPhotoThumbsStyleKit

#pragma mark Cache

static UIColor* _mainColor = nil;

static UIImage* _imageOfCheckOnIcon = nil;
static UIImage* _imageOfCheckOffIcon = nil;

#pragma mark Initialization

+ (void)initialize
{
    // Colors Initialization
    _mainColor = [UIColor colorWithRed: 0.149 green: 0.706 blue: 0.957 alpha: 1];

}

#pragma mark Colors

+ (UIColor*)mainColor { return _mainColor; }

#pragma mark Drawing Methods

+ (void)drawCheckOnIcon
{

    //// check-on
    {
        //// Shape Drawing
        UIBezierPath* shapePath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(4, 4, 22, 22)];
        [DMPhotoThumbsStyleKit.mainColor setFill];
        [shapePath fill];


        //// Checkmark Drawing
        UIBezierPath* checkmarkPath = [UIBezierPath bezierPath];
        [checkmarkPath moveToPoint: CGPointMake(9.75, 14.75)];
        [checkmarkPath addLineToPoint: CGPointMake(8.25, 16.25)];
        [checkmarkPath addLineToPoint: CGPointMake(12.25, 20.25)];
        [checkmarkPath addLineToPoint: CGPointMake(21.25, 11.75)];
        [checkmarkPath addLineToPoint: CGPointMake(19.75, 10.25)];
        [checkmarkPath addLineToPoint: CGPointMake(12.25, 17.25)];
        [checkmarkPath addLineToPoint: CGPointMake(9.75, 14.75)];
        [checkmarkPath closePath];
        checkmarkPath.miterLimit = 4;

        checkmarkPath.usesEvenOddFillRule = YES;

        [UIColor.whiteColor setFill];
        [checkmarkPath fill];
    }
}

+ (void)drawCheckOffIcon
{
    //// Color Declarations
    UIColor* checkboxGrayColor = [UIColor colorWithRed: 0 green: 0 blue: 0 alpha: 0.239];

    //// CheckOffIcon
    {
        //// dark Drawing
        UIBezierPath* darkPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(4, 4, 22, 22)];
        [checkboxGrayColor setFill];
        [darkPath fill];


        //// dark-copy Drawing
        UIBezierPath* darkcopyPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(4, 4, 22, 22)];
        [UIColor.whiteColor setStroke];
        darkcopyPath.lineWidth = 1;
        [darkcopyPath stroke];
    }
}

#pragma mark Generated Images

+ (UIImage*)imageOfCheckOnIcon
{
    if (_imageOfCheckOnIcon)
        return _imageOfCheckOnIcon;

    UIGraphicsBeginImageContextWithOptions(CGSizeMake(30, 30), NO, 0.0f);
    [DMPhotoThumbsStyleKit drawCheckOnIcon];

    _imageOfCheckOnIcon = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return _imageOfCheckOnIcon;
}

+ (UIImage*)imageOfCheckOffIcon
{
    if (_imageOfCheckOffIcon)
        return _imageOfCheckOffIcon;

    UIGraphicsBeginImageContextWithOptions(CGSizeMake(30, 30), NO, 0.0f);
    [DMPhotoThumbsStyleKit drawCheckOffIcon];

    _imageOfCheckOffIcon = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return _imageOfCheckOffIcon;
}

#pragma mark Customization Infrastructure

- (void)setCheckOnIconTargets: (NSArray*)checkOnIconTargets
{
    _checkOnIconTargets = checkOnIconTargets;

    for (id target in self.checkOnIconTargets)
        [target performSelector: @selector(setImage:) withObject: DMPhotoThumbsStyleKit.imageOfCheckOnIcon];
}

- (void)setCheckOffIconTargets: (NSArray*)checkOffIconTargets
{
    _checkOffIconTargets = checkOffIconTargets;

    for (id target in self.checkOffIconTargets)
        [target performSelector: @selector(setImage:) withObject: DMPhotoThumbsStyleKit.imageOfCheckOffIcon];
}


@end