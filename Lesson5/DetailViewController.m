//
//  DetailViewController.m
//  Lesson4.1
//
//  Created by T on 11.04.15.
//  Copyright (c) 2015 T. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.label_mainValue.text = [NSString stringWithFormat:@"Каких - %@ очень",self.string_mainValue];
    self.textView_Discr.text = self.string_Discr;
    self.label_Price.text = [NSString stringWithFormat:@"%@ штук",self.string_Price];

    
    self.imageView_DetailItem.image = self.image;
    
    


}

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

@end
