//
//  Student.h
//  Dictionary
//
//  Created by T on 05.05.15.
//  Copyright (c) 2015 T. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *surname;
@property (strong, nonatomic) NSString *phrase;

- (NSString *) fullName;

@end
