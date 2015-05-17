//
//  TSDoctor.m
//  Delegates
//
//  Created by T on 08.05.15.
//  Copyright (c) 2015 T. All rights reserved.
//

#import "TSDoctor.h"

@implementation TSDoctor

- (void) patienceFelldBad: (NSString *) patient {
    NSLog(@"%@", patient.name);
}

- (void) patient: (NSString *) patient hasQuestion: (NSString *) question {
    
}

@end
