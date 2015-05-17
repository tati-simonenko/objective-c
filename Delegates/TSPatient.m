//
//  TSPatient.m
//  Delegates
//
//  Created by T on 08.05.15.
//  Copyright (c) 2015 T. All rights reserved.
//

#import "TSPatient.h"

@implementation TSPatient

- (BOOL) howAreYou {
    return NO;
}

- (void) takePill {
    
    NSLog(@"%@ takes pill", self.name);
    
}

- (void) makeShot {
    NSLog(@"%@ make shot", self.name);
}

@end
