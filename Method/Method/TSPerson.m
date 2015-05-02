//
//  TSPerson.m
//  Method
//
//  Created by T on 24.04.15.
//  Copyright (c) 2015 T. All rights reserved.
//

#import "TSPerson.h"

@implementation TSPerson

- (id)init
{
    self = [super init];
    if (self) {
        self.name = @"AnyName";
        self.height = 0.5f;
        self.weight = 4.f;
        self.gender = @"man";
    }
    return self;
}

-(void) moveMent{
    
    NSLog(@"Мне доктор сказал ходить — вот я и ходю.");
    
}


@end
