//
//  LOiPhoneFabrica.m
//  LessonOne
//
//  Created by T on 01.04.15.
//  Copyright (c) 2015 T. All rights reserved.
//

#import "LOiPhoneFabrica.h"

@implementation LOiPhoneFabrica

- (void) startFabrica {
    
    [self makeScreen];
    [self setIOS];
    [self makeBox];
    
}

- (void) makeScreen {
    NSLog(@"Прикручиваем экран");
}

- (void) setIOS {
    NSLog(@"Ставим ios");
}

- (void) makeBox {
    NSLog(@"Кладем в коробочку");
}

@end
