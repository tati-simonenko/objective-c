//
//  DetailViewController.h
//  Lesson4.1
//
//  Created by T on 11.04.15.
//  Copyright (c) 2015 T. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) NSString *string_mainValue;
@property (strong, nonatomic) NSString *string_Price;
@property (strong, nonatomic) NSString *string_Discr;

@property (strong, nonatomic) UIImage *image;


@property (strong, nonatomic) IBOutlet UITextField *label_mainValue;
@property (strong, nonatomic) IBOutlet UILabel *label_Price;
@property (strong, nonatomic) IBOutlet UITextView *textView_Discr;
@property (strong, nonatomic) IBOutlet UIImageView *imageView_DetailItem;

@end
