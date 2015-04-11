//
//  DetailViewController.h
//  Lesson4.1
//
//  Created by T on 11.04.15.
//  Copyright (c) 2015 T. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *label_mainValue;
@property (strong, nonatomic) IBOutlet UILabel *label_Price;
@property (strong, nonatomic) IBOutlet UITextView *textView_Discr;

@end
