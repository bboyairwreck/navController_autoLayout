//
// Created by Eric Chee on 5/3/15.
// Copyright (c) 2015 Cheebros. All rights reserved.
//

#import "UIView+ECAutoLayout.h"


@implementation UIView (ECAutoLayout)

#pragma mark Centering
- (NSArray *)centerView:(UIView *)view with:(UIView *)ancestor
{
    view.translatesAutoresizingMaskIntoConstraints = NO;

    NSLayoutConstraint *centerXConstraint = [NSLayoutConstraint constraintWithItem:view
                                                                         attribute:NSLayoutAttributeCenterX
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:ancestor
                                                                         attribute:NSLayoutAttributeCenterX
                                                                        multiplier:1.0f
                                                                          constant:0.0f];

    NSLayoutConstraint *centerYConstraint = [NSLayoutConstraint constraintWithItem:view
                                                                         attribute:NSLayoutAttributeCenterY
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:ancestor
                                                                         attribute:NSLayoutAttributeCenterY
                                                                        multiplier:1.0f
                                                                          constant:0.0f];

    return @[centerXConstraint, centerYConstraint];
}

- (NSLayoutConstraint *)centerXView:(UIView *)view with:(UIView *)ancestor
{
    view.translatesAutoresizingMaskIntoConstraints = NO;

    NSLayoutConstraint *centerXConstraint = [NSLayoutConstraint constraintWithItem:view
                                                                  attribute:NSLayoutAttributeCenterX
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:ancestor
                                                                  attribute:NSLayoutAttributeCenterX
                                                                 multiplier:1.0f
                                                                   constant:0.0f];

    return centerXConstraint;
}

- (NSLayoutConstraint *)centerYView:(UIView *)view with:(UIView *)ancestor
{
    view.translatesAutoresizingMaskIntoConstraints = NO;

    NSLayoutConstraint *centerYConstraint = [NSLayoutConstraint constraintWithItem:view
                                                                  attribute:NSLayoutAttributeCenterY
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:ancestor
                                                                  attribute:NSLayoutAttributeCenterY
                                                                 multiplier:1.0f
                                                                   constant:0.0f];

    return centerYConstraint;
}

#pragma mark Aligning
- (NSLayoutConstraint *)leftAlignWithView:(UIView *)view with:(UIView *)ancestor
{
    view.translatesAutoresizingMaskIntoConstraints = NO;

    NSLayoutConstraint *leftAlignConstraint = [NSLayoutConstraint constraintWithItem:view
                                                                  attribute:NSLayoutAttributeLeft
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:ancestor
                                                                  attribute:NSLayoutAttributeLeft
                                                                 multiplier:1.0f
                                                                   constant:0.0f];

    return leftAlignConstraint;
}

- (NSLayoutConstraint *)rightAlignWitView:(UIView *)view with:(UIView *)ancestor
{
    view.translatesAutoresizingMaskIntoConstraints = NO;

    NSLayoutConstraint *rightAlignConstraint = [NSLayoutConstraint constraintWithItem:view
                                                                  attribute:NSLayoutAttributeRight
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:ancestor
                                                                  attribute:NSLayoutAttributeRight
                                                                 multiplier:1.0f
                                                                   constant:0.0f];

    return rightAlignConstraint;
}

- (NSLayoutConstraint *)topAlignView:(UIView *)view with:(UIView *)sibling
{
    view.translatesAutoresizingMaskIntoConstraints = NO;

    NSLayoutConstraint *topAlignConstraint = [NSLayoutConstraint constraintWithItem:view
                                                                  attribute:NSLayoutAttributeTop
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:sibling
                                                                  attribute:NSLayoutAttributeTop
                                                                 multiplier:1.0f
                                                                   constant:0.0f];

    return topAlignConstraint;
}

- (NSLayoutConstraint *)bottomAlignView:(UIView *)view with:(UIView *)sibling
{
    view.translatesAutoresizingMaskIntoConstraints = NO;

    NSLayoutConstraint *bottomAlignConstraint = [NSLayoutConstraint constraintWithItem:view
                                                                  attribute:NSLayoutAttributeBottom
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:sibling
                                                                  attribute:NSLayoutAttributeBottom
                                                                 multiplier:1.0f
                                                                   constant:0.0f];

    return bottomAlignConstraint;
}

#pragma mark Stacking
    // Top to bottom
    // [topSibling]
    // [view]
- (NSLayoutConstraint *)stackVertView:(UIView *)view below:(UIView *)topSibling
{
    view.translatesAutoresizingMaskIntoConstraints = NO;

    NSLayoutConstraint *stackVertConstraint = [NSLayoutConstraint constraintWithItem:view
                                                                  attribute:NSLayoutAttributeTop
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:topSibling
                                                                  attribute:NSLayoutAttributeBottom
                                                                 multiplier:1.0f
                                                                   constant:0.0f];

    return stackVertConstraint;
}

    // Bottom to top
    // [view]
    // [belowSibling]
- (NSLayoutConstraint *)stackVertView:(UIView *)view above:(UIView *)belowSibling

{
    view.translatesAutoresizingMaskIntoConstraints = NO;

    NSLayoutConstraint *stackVertConstraint = [NSLayoutConstraint constraintWithItem:view
                                                                           attribute:NSLayoutAttributeBottom
                                                                           relatedBy:NSLayoutRelationEqual
                                                                              toItem:belowSibling
                                                                           attribute:NSLayoutAttributeTop
                                                                          multiplier:1.0f
                                                                            constant:0.0f];

    return stackVertConstraint;
}

    // Left to right [preLeftView][view]
- (NSLayoutConstraint *)stackHorizView:(UIView *)view toRightOf:(UIView *)prevLeftView
{
    view.translatesAutoresizingMaskIntoConstraints = NO;

    NSLayoutConstraint *stackHorizConstraint = [NSLayoutConstraint constraintWithItem:view
                                                                  attribute:NSLayoutAttributeLeft
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:prevLeftView
                                                                  attribute:NSLayoutAttributeRight
                                                                 multiplier:1.0f
                                                                   constant:0.0f];

    return stackHorizConstraint;
}

    // Right to left [view][prevRightView]
- (NSLayoutConstraint *)stackHorizView:(UIView *)view toLeftOf:(UIView *)prevRightView
{
    view.translatesAutoresizingMaskIntoConstraints = NO;

    NSLayoutConstraint *stackHorizConstraint = [NSLayoutConstraint constraintWithItem:view
                                                                            attribute:NSLayoutAttributeRight
                                                                            relatedBy:NSLayoutRelationEqual
                                                                               toItem:prevRightView
                                                                            attribute:NSLayoutAttributeLeft
                                                                           multiplier:1.0f
                                                                             constant:0.0f];

    return stackHorizConstraint;
}

#pragma mark Filling
- (NSArray *)fillView:(UIView *)view with:(UIView *)ancestor
{
    view.translatesAutoresizingMaskIntoConstraints = NO;

    NSLayoutConstraint *widthConstraint = [NSLayoutConstraint constraintWithItem:view
                                                                  attribute:NSLayoutAttributeWidth
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:ancestor
                                                                  attribute:NSLayoutAttributeWidth
                                                                 multiplier:1.0f
                                                                   constant:0.0f];

    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:view
                                                                  attribute:NSLayoutAttributeHeight
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:ancestor
                                                                  attribute:NSLayoutAttributeHeight
                                                                 multiplier:1.0f
                                                                   constant:0.0f];

    NSArray *constraints = @[widthConstraint, heightConstraint];
    return constraints;
}

- (NSLayoutConstraint *)fillWidthWithView:(UIView *)view with:(UIView *)ancestor
{
    view.translatesAutoresizingMaskIntoConstraints = NO;

    NSLayoutConstraint *widthConstraint = [NSLayoutConstraint constraintWithItem:view
                                                                  attribute:NSLayoutAttributeWidth
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:ancestor
                                                                  attribute:NSLayoutAttributeWidth
                                                                 multiplier:1.0f
                                                                   constant:0.0f];

    return widthConstraint;
}

- (NSLayoutConstraint *)fillHeightWithView:(UIView *)view with:(UIView *)ancestor
{
    view.translatesAutoresizingMaskIntoConstraints = NO;

    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:view
                                                                  attribute:NSLayoutAttributeHeight
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:ancestor
                                                                  attribute:NSLayoutAttributeHeight
                                                                 multiplier:1.0f
                                                                   constant:0.0f];

    return heightConstraint;
}

- (NSLayoutConstraint *)fillWidthWithView:(UIView *)view with:(UIView *)ancestor multiplier:(CGFloat)multiplier
{
    view.translatesAutoresizingMaskIntoConstraints = NO;

    NSLayoutConstraint *widthConstraint = [NSLayoutConstraint constraintWithItem:view
                                                                       attribute:NSLayoutAttributeWidth
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:ancestor
                                                                       attribute:NSLayoutAttributeWidth
                                                                      multiplier:multiplier
                                                                        constant:0.0f];

    return widthConstraint;
}

- (NSLayoutConstraint *)fillHeightWithView:(UIView *)view with:(UIView *)ancestor multiplier:(CGFloat)multiplier
{
    view.translatesAutoresizingMaskIntoConstraints = NO;

    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:view
                                                                        attribute:NSLayoutAttributeHeight
                                                                        relatedBy:NSLayoutRelationEqual
                                                                           toItem:ancestor
                                                                        attribute:NSLayoutAttributeHeight
                                                                       multiplier:multiplier
                                                                         constant:0.0f];

    return heightConstraint;
}


#pragma mark Padding
    // Left to right [prevRightView][view]
- (NSLayoutConstraint *)stackHorizView:(UIView *)view toRightOf:(UIView *)prevRightView padding:(CGFloat)padding{
    view.translatesAutoresizingMaskIntoConstraints = NO;

    NSLayoutConstraint *stackHorizConstraint = [NSLayoutConstraint constraintWithItem:view
                                                                            attribute:NSLayoutAttributeLeft
                                                                            relatedBy:NSLayoutRelationEqual
                                                                               toItem:prevRightView
                                                                            attribute:NSLayoutAttributeRight
                                                                           multiplier:1.0f
                                                                             constant:padding];

    return stackHorizConstraint;
}

    // Top to bottom
- (NSLayoutConstraint *)stackVertView:(UIView *)view below:(UIView *)topSibling padding:(CGFloat)padding
{
    view.translatesAutoresizingMaskIntoConstraints = NO;

    NSLayoutConstraint *stackVertConstraint = [NSLayoutConstraint constraintWithItem:view
                                                                           attribute:NSLayoutAttributeTop
                                                                           relatedBy:NSLayoutRelationEqual
                                                                              toItem:topSibling
                                                                           attribute:NSLayoutAttributeBottom
                                                                          multiplier:1.0f
                                                                            constant:padding];

    return stackVertConstraint;
}

@end