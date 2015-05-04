//
// Created by Eric Chee on 5/3/15.
// Copyright (c) 2015 Cheebros. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ECAutoLayout)

#pragma mark Centering
- (NSArray *)centerView:(UIView *)view with:(UIView *)ancestor;

- (NSLayoutConstraint *)centerXView:(UIView *)view with:(UIView *)ancestor;

- (NSLayoutConstraint *)centerYView:(UIView *)view with:(UIView *)ancestor;

#pragma mark Aligning
- (NSLayoutConstraint *)leftAlignWithView:(UIView *)view with:(UIView *)ancestor;

- (NSLayoutConstraint *)rightAlignWitView:(UIView *)view with:(UIView *)ancestor;

- (NSLayoutConstraint *)topAlignView:(UIView *)view with:(UIView *)sibling;

- (NSLayoutConstraint *)bottomAlignView:(UIView *)view with:(UIView *)sibling;

#pragma mark Stacking
    // Top to bottom
- (NSLayoutConstraint *)stackVertView:(UIView *)view below:(UIView *)topSibling;

    // Bottom to top
- (NSLayoutConstraint *)stackVertView:(UIView *)view above:(UIView *)belowSibling;

    // Left to right
- (NSLayoutConstraint *)stackHorizView:(UIView *)view toRightOf:(UIView *)prevLeftView;

    // Right to Left
- (NSLayoutConstraint *)stackHorizView:(UIView *)view toLeftOf:(UIView *)prevRightView;

#pragma mark Filling
- (NSArray *)fillView:(UIView *)view with:(UIView *)ancestor;

- (NSLayoutConstraint *)fillWidthWithView:(UIView *)view with:(UIView *)ancestor;

- (NSLayoutConstraint *)fillHeightWithView:(UIView *)view with:(UIView *)ancestor;

- (NSLayoutConstraint *)fillWidthWithView:(UIView *)view with:(UIView *)ancestor multiplier:(CGFloat)multiplier;

- (NSLayoutConstraint *)fillHeightWithView:(UIView *)view with:(UIView *)ancestor multiplier:(CGFloat)multiplier;


#pragma mark Padding
- (NSLayoutConstraint *)stackHorizView:(UIView *)view toRightOf:(UIView *)prevRightView padding:(CGFloat)padding;

- (NSLayoutConstraint *)stackVertView:(UIView *)view below:(UIView *)topSibling padding:(CGFloat)padding;

@end