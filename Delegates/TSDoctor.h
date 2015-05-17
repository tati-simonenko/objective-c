//
//  TSDoctor.h
//  Delegates
//
//  Created by T on 08.05.15.
//  Copyright (c) 2015 T. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TSPatient.h"

@interface TSDoctor : NSObject <TSPatientDelegate>

@end

