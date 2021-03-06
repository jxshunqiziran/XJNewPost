//
//  UIView+FrameUtilty.m
//  CircleFriend
//
//  Created by 江鑫 on 2017/12/5.
//  Copyright © 2017年 智享时代. All rights reserved.
//

#import "UIView+FrameUtilty.h"

@implementation UIView (FrameUtilty)


/////////////////////////////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
- (CGFloat)xj_left {
    return self.frame.origin.x;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)setXj_left:(CGFloat)xj_left{
    CGRect frame = self.frame;
    frame.origin.x = xj_left;
    self.frame = frame;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (CGFloat)xj_top {
    return self.frame.origin.y;
}



///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)setXj_top:(CGFloat)xj_top {
    CGRect frame = self.frame;
    frame.origin.y = xj_top;
    self.frame = frame;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (CGFloat)xj_right {
    return self.frame.origin.x + self.frame.size.width;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)setXj_right:(CGFloat)xj_right {
    CGRect frame = self.frame;
    frame.origin.x = xj_right - frame.size.width;
    self.frame = frame;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (CGFloat)xj_bottom{
    return self.frame.origin.y + self.frame.size.height;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)setXj_bottom:(CGFloat)xj_bottom {
    CGRect frame = self.frame;
    frame.origin.y = xj_bottom - frame.size.height;
    self.frame = frame;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (CGFloat)centerX {
    return self.center.x;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)setCenterX:(CGFloat)centerX {
    self.center = CGPointMake(centerX, self.center.y);
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (CGFloat)centerY {
    return self.center.y;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)setCenterY:(CGFloat)centerY {
    self.center = CGPointMake(self.center.x, centerY);
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (CGFloat)xj_width {
    return self.frame.size.width;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)setXj_width:(CGFloat)xj_width {
    CGRect frame = self.frame;
    frame.size.width = xj_width;
    self.frame = frame;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (CGFloat)xj_height {
    return self.frame.size.height;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)setXj_height:(CGFloat)xj_height {
    CGRect frame = self.frame;
    frame.size.height = xj_height;
    self.frame = frame;
}
///////////////////////////////////////////////////////////////////////////////////////////////////
- (CGPoint)est_origin {
    return self.frame.origin;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)setEst_origin:(CGPoint)origin {
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (CGSize)est_size {
    return self.frame.size;
}

///////////////////////////////////////////////////////////////////////////////////////////////////
- (CGFloat)est_centerX {
    return self.center.x;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)setEst_centerX:(CGFloat)centerX {
    self.center = CGPointMake(centerX, self.center.y);
}

///////////////////////////////////////////////////////////////////////////////////////////////////
- (CGFloat)est_centerY {
    return self.center.y;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)setEst_centerY:(CGFloat)centerY {
    self.center = CGPointMake(self.center.x, centerY);
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)setEst_size:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

///////////////////////////////////////////////////////////////////////////////////////////////////
- (CGPoint)est_topRight
{
    return CGPointMake(self.frame.origin.x+self.frame.size.width,self.frame.origin.y);
}

///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)setEst_topRight:(CGPoint)est_topRight
{
    CGRect frame = self.frame;
    
    CGFloat xdetal = est_topRight.x - frame.origin.x - frame.size.width;
    frame.origin.x = frame.origin.x + xdetal;
    
    frame.origin.y = est_topRight.y;
    
    self.frame = frame;
    
}

///////////////////////////////////////////////////////////////////////////////////////////////////
- (CGPoint)est_bottomLeft
{
    return CGPointMake(self.frame.origin.x,self.frame.origin.y+self.frame.size.height);
}

///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)setEst_bottomLeft:(CGPoint)est_bottomLeft
{
    CGRect frame = self.frame;
    
    CGFloat ydetal = est_bottomLeft.y - frame.origin.y - frame.size.height;
    frame.origin.y = frame.origin.y + ydetal;
    
    frame.origin.x = est_bottomLeft.x;
    
    self.frame = frame;
}

///////////////////////////////////////////////////////////////////////////////////////////////////
- (CGPoint)est_bottomRight
{
    return CGPointMake(self.frame.origin.x+self.frame.size.width,self.frame.origin.y+self.frame.size.height);
}

///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)setEst_bottomRight:(CGPoint)est_bottomRight
{
    CGRect frame = self.frame;
    
    CGFloat xdetal = est_bottomRight.x - frame.origin.x - frame.size.width;
    frame.origin.x = frame.origin.x + xdetal;
    
    CGFloat ydetal = est_bottomRight.y - frame.origin.y - frame.size.height;
    frame.origin.y = frame.origin.y + ydetal;
    
    self.frame = frame;
}

- (CGFloat)est_rightToSuper
{
    return self.superview.bounds.size.width - self.frame.size.width - self.frame.origin.x;
}

- (void)setEst_rightToSuper:(CGFloat)rightToSuper
{
    CGRect frame = self.frame;
    
    frame.origin.x =  self.superview.bounds.size.width - self.frame.size.width  - rightToSuper,
    self.frame = frame;
}

- (CGFloat)est_bottomToSuper
{
    return self.superview.bounds.size.height - self.frame.size.height - self.frame.origin.y;
}

- (void)setEst_bottomToSuper:(CGFloat)bottomToSuper
{
    CGRect frame = self.frame;
    
    frame.origin.y =  self.superview.bounds.size.height - self.frame.size.height  - bottomToSuper;
    self.frame = frame;
}

@end
