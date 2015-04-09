//
//  ViewController.m
//  Lesson3
//
//  Created by T on 09.04.15.
//  Copyright (c) 2015 T. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString * string = @"one,two,three,5";
    
    NSString * string1 = [string stringByReplacingOccurrencesOfString:@"," withString:@", "];
    
    NSArray * array = [[NSArray alloc] initWithObjects:@"one", @"two",@"three", string1, nil];
    
    NSLog(@"%@", array);
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
