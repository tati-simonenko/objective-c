//
//  ViewController.m
//  ViewControllers
//
//  Created by T on 15.05.15.
//  Copyright (c) 2015 T. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView * view1 = [[UIView alloc] initWithFrame:CGRectMake(10, 10, 100, 100)];
    view1.backgroundColor = [UIColor redColor];
    [self.view addSubview:view1];
    
    
    UIView * view2 = [[UIView alloc] initWithFrame:CGRectMake(20, 80, 100, 10)];
    view2.backgroundColor = [[UIColor grayColor] colorWithAlphaComponent:0.8];
    [self.view addSubview:view2];
    
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
