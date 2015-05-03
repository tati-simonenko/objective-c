//
//  TestViewController.m
//  TSLesson7
//
//  Created by T on 02.05.15.
//  Copyright (c) 2015 T. All rights reserved.
//

#import "TestViewController.h"
#import "AppConstants.h"

@interface TestViewController ()
- (IBAction)back:(id)sender;
@property (strong, nonatomic) IBOutlet UISwitch *set_switch;

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithRed:57/255 green:9/255 blue:31/255 alpha:1.0];
    [self performSelector:@selector(set_switch) withObject:nil afterDelay:1.0f];
    
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notif_method) name:TEST_NOTIF object:nil];
    
    

 
    
//    - (IBAction)switchOne:(id)sender {
//        UISwitch = switchUI = (id)sender;
//        
//        if (switchUI.on) {
//            NSLog(@"ON");
//        }
//        
//        else {
//            NSLog(@"OFF");
//        }
//        
//    }

    
//    [self performSelector:@selector(changeColor) withObject:nil afterDelay:3.0f];
    // Do any additional setup after loading the view.
}

//- (void) changeColor {
//    self.view.backgroundColor = [UIColor redColor];
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)back:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
