//
//  Start.m
//  LessonTwo
//
//  Created by T on 02.04.15.
//  Copyright (c) 2015 T. All rights reserved.
//

#import "Start.h"

@implementation Start

//+ (void) classMethod : (NSString *) string {
//    NSLog(@"Я метод класса %@", string);
//}
//
//- (void) makeScreen : (NSString *) screen {
//    
//    NSLog(@"Aloha %@", screen);
//    
//}

- (void) newAdventure {
    
    [self chooseCountry];
    [self buyTickets];
    [self beInTime];
    
}

- (void) chooseCountry : (NSString *) string {
    NSLog(@"Выбери страну, куда ты хочешь поехать %@", string);
}

- (void) buyTickets {
    NSLog(@"Купи билеты в одну сторону");
}

- (void) beInTime {
    NSLog(@"Успей вовремя на самолет");
}

//-  (NSString * ) makeString : (NSInteger) i {
//    NSString * string = @"I am a string";
//    NSString * stringI = [NSString stringWithFormat:@"%li", (long)i];
//    NSString * stringResult = [NSString stringWithFormat:@"%@ переданное значение %@", string, stringI];
//    
//    return stringResult;
//}


@end
