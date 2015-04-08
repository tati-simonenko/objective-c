//
//  Start.m
//  LessonTwo
//
//  Created by T on 02.04.15.
//  Copyright (c) 2015 T. All rights reserved.
//

#import "Start.h"

@implementation Start


- (void) newAdventure : (NSString *) string {
    
    [self chooseCountry:string];
    [self buyTickets];
    [self beInTime];
    
}

- (void) chooseCountry : (NSString *) string {
    NSLog(@"В этот раз удача выпала на эту страну: %@", string);
}

- (void) buyTickets {
    NSLog(@"Купи билеты в одну сторону");
}

- (void) beInTime {
    NSLog(@"Успей вовремя на самолет");
}



@end
