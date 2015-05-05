//
//  ToDoDetailViewController.h
//  Lesson8
//
//  Created by T on 03.05.15.
//  Copyright (c) 2015 T. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ToDoDetailViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, assign) BOOL isNewEvent;
@property (nonatomic, strong) NSString * string_EventItem;
@property (nonatomic, strong) NSDate * date_Current_Event;

@end
