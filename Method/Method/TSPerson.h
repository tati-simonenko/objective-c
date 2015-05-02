//
//  TSPerson.h
//  Method
//
//  Created by T on 24.04.15.
//  Copyright (c) 2015 T. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TSPerson : NSObject

@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSString* gender;
@property (assign, nonatomic) float height;
@property (assign, nonatomic) float weight;

-(void) moveMent;

@end
