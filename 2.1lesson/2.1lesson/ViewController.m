//
//  ViewController.m
//  2.1lesson
//
//  Created by T on 05.05.15.
//  Copyright (c) 2015 T. All rights reserved.
//

#import "ViewController.h"
#import "Animations.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *view_bg_YES;
@property (weak, nonatomic) IBOutlet UIView *view_bg_NO;
@property (weak, nonatomic) IBOutlet UIView *view_check_YES;
@property (weak, nonatomic) IBOutlet UIView *view_check_NO;

- (IBAction)action_NO:(id)sender;
- (IBAction)action_YES:(id)sender;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    isYes = YES;
    isColorChanged = NO;
    [self setView];
}




- (void) setView {
    
    self.view_bg_YES.layer.backgroundColor = [UIColor blackColor].CGColor;
    
    self.view_bg_NO.layer.borderColor= [UIColor redColor].CGColor;
    self.view_bg_NO.layer.borderWidth = 1.0;
    self.view_bg_NO.layer.cornerRadius = 5.0;
    
    self.view_bg_YES.layer.borderColor= [UIColor redColor].CGColor;
    self.view_bg_YES.layer.borderWidth = 1.0;
    self.view_bg_YES.layer.cornerRadius = 5.0;
    
    
    self.view_check_NO.layer.borderColor= [UIColor blackColor].CGColor;
    self.view_check_NO.layer.borderWidth = 1.0;
    self.view_check_NO.layer.cornerRadius = 5.0;
    
    self.view_check_YES.layer.borderColor= [UIColor blackColor].CGColor;
    self.view_check_YES.layer.borderWidth = 1.0;
    self.view_check_YES.layer.cornerRadius = 5.0;
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)action_YES:(id)sender {
    
    if (!isColorChanged) {
        
        Animations * anim =[Animations new];
        [anim change_Change_Box:self.view_check_YES Color:[UIColor grayColor]];
        [anim change_Change_Box:self.view_check_NO Color:[UIColor whiteColor]];
        
//        [Animations change_Change_Box:self.view_check_YES Color:[UIColor grayColor]];
//        [Animations change_Change_Box:self.view_check_NO Color:[UIColor whiteColor]];
        
//        self.view_check_YES.layer.backgroundColor= [UIColor grayColor].CGColor;
//        self.view_check_NO.layer.backgroundColor= [UIColor whiteColor].CGColor;
        
        isColorChanged = YES;
        isYes = YES;
        
    }
    
    else if (!isYes) {
        
        Animations * anim =[Animations new];
        [anim change_Change_Box:self.view_check_YES Color:[UIColor grayColor]];
        [anim change_Change_Box:self.view_check_NO Color:[UIColor whiteColor]];
        
        isYes = NO;
        
    }
    
   
    
}

- (IBAction)action_NO:(id)sender {
    
    if (!isColorChanged) {
        
        Animations * anim =[Animations new];
        [anim change_Change_Box:self.view_check_YES Color:[UIColor whiteColor]];
        [anim change_Change_Box:self.view_check_NO Color:[UIColor grayColor]];
        
        //        [Animations change_Change_Box:self.view_check_YES Color:[UIColor whiteColor]];
        //        [Animations change_Change_Box:self.view_check_NO Color:[UIColor grayColor]];
        
        //        self.view_check_NO.layer.backgroundColor= [UIColor whiteColor].CGColor;
        //        self.view_check_NO.layer.backgroundColor= [UIColor grayColor].CGColor;
        
        isColorChanged = YES;
        isYes = NO;
        
        
    }
    
    else if (!isYes) {
        
        Animations * anim =[Animations new];
        [anim change_Change_Box:self.view_check_YES Color:[UIColor whiteColor]];
        [anim change_Change_Box:self.view_check_NO Color:[UIColor grayColor]];

        isYes = NO;
        
    }
    
}














@end
