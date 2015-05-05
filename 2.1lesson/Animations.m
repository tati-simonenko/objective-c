//
//  Animations.m
//  2.1lesson
//
//  Created by T on 06.05.15.
//  Copyright (c) 2015 T. All rights reserved.
//

#import "Animations.h"

@implementation Animations

- (void) change_Change_Box: (UIView *) view Color: (UIColor *) color {
    
    CATransition * animation = [[CATransition alloc]init];
    animation.type = kCATransitionFade;
    animation.duration = 0.35;
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn] ];
    [animation setFillMode:kCAFillModeBoth];
    
    [view.layer addAnimation:animation forKey:@"Fade"];
    view.backgroundColor = color;
    
}


@end
