//
//  ToDoDetailViewController.m
//  Lesson8
//
//  Created by T on 03.05.15.
//  Copyright (c) 2015 T. All rights reserved.
//

#import "ToDoDetailViewController.h"

@interface ToDoDetailViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;

- (IBAction)save_Action:(id)sender;

- (IBAction)dataPicker_Action:(UIDatePicker *)sender;

@property (strong, nonatomic) NSDate * date_New_Event;

@property (weak, nonatomic) IBOutlet UIDatePicker *dataPicker;


@end

@implementation ToDoDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (self.isNewEvent) {
        [self.textField becomeFirstResponder];
    }
    else {
        
        self.textField.text = self.string_EventItem;
        self.textField.userInteractionEnabled = NO;
        self.dataPicker.userInteractionEnabled = NO;
        
        [self performSelector:@selector(set_Date_Current_Event) withObject:nil afterDelay:0.5];
        
    }
    
    
    
}

- (void) set_Date_Current_Event {
    [self.dataPicker setDate:self.date_Current_Event animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) set_notification {
    
    NSDateFormatter * format = [[NSDateFormatter alloc] init];
    format.dateFormat = @"dd.MMMM.yyyy HH:mm";
    
    NSString * string_Date = [format stringFromDate:self.date_New_Event];
    
    UILocalNotification * notif = [[UILocalNotification alloc]init];
    notif.fireDate = self.date_New_Event;
    notif.timeZone = [NSTimeZone defaultTimeZone];
    notif.alertBody = self.textField.text;
    
    NSDictionary * dict = [[NSDictionary alloc]initWithObjectsAndKeys:
                           self.textField.text, @"event",
                           string_Date, @"date_Event", nil];
    notif.userInfo = dict;
    notif.soundName = UILocalNotificationDefaultSoundName;
    notif.applicationIconBadgeNumber = [UIApplication sharedApplication].applicationIconBadgeNumber + 1;
    
    [[UIApplication sharedApplication] scheduleLocalNotification:notif];
    
    NSLog(@"%@", notif);
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"NewEvent" object:nil];
    
    [self.navigationController popViewControllerAnimated:YES];
    
}



- (IBAction)save_Action:(id)sender {
    
    // если барабан не прокрутили
    
    if (!self.date_New_Event) {
        UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"АЛАРМ!" message:@"крути барабан или уходи!" delegate:self cancelButtonTitle:@"не хочу" otherButtonTitles:@"ясно", nil];
        [alert show];
    }
    
    else if ([self.textField.text length] == 0) {
        
        UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"АЛАРМ!" message:@"введи задачу или уходи!" delegate:self cancelButtonTitle:@"не хочу" otherButtonTitles:@"понятно", nil];
        [alert show];
        
    }
    
    else {
        
        [self set_notification];
        
    }
    
}

- (IBAction)dataPicker_Action:(UIDatePicker *)sender {
    
    self.date_New_Event = sender.date;
    
}

#pragma mark UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [self.textField resignFirstResponder];
    
    
    return YES;
    
}












@end
