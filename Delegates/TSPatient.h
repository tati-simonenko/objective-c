//
//  TSPatient.h
//  Delegates
//
//  Created by T on 08.05.15.
//  Copyright (c) 2015 T. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ASPatientDelegate;

@interface ASPatient : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) CGFloat temperature;
@property (weak, nonatomic) id <ASPatientDelegate> delegate;

- (BOOL) howAreYou;
- (void) takePill;
- (void) makeShot;

@end

@protocol ASPatientDelegate
@required
- (void) patientFeelsBad:(ASPatient*) patient;
- (void) patient:(ASPatient*) patient hasQuestion:(NSString*) question;

@end