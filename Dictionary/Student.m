//
//  Student.m
//  Dictionary
//
//  Created by T on 05.05.15.
//  Copyright (c) 2015 T. All rights reserved.
//

#import "Student.h"

@implementation Student

- (NSString *) description {
    
    NSString * temp;
    temp = [NSString stringWithFormat:@"name: %@, surname: %@, phrase: %@", self.name, self.surname, self.phrase];
    return temp;
    
}

- (NSString *) fullName {
    
    NSString * fullName = [NSString stringWithFormat:@"%@ %@", self.name, self.surname];
    return fullName;
    
}

- (NSString *) heSaid {
    
    NSString * heSaid = [NSString stringWithFormat:@"%@", self.phrase];
    return heSaid;
    
}

@end
