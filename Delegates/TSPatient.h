//
//  TSPatient.h
//  Delegates
//
//  Created by T on 08.05.15.
//  Copyright (c) 2015 T. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TSPatientDelegate;

@interface TSPatient : NSObject



@property (strong, nonatomic) NSString * name;
@property (assign, nonatomic) float * temperature;
@property (weak, nonatomic) id <TSPatientDelegate> delegate;


- (BOOL) howAreYou;
- (void) takePill;
- (void) makeShot;

@end

@protocol TSPatientDelegate <NSObject>

- (void) patienceFelldBad: (NSString *) patient;
- (void) patient: (NSString *) patient hasQuestion: (NSString *) question;

@end
