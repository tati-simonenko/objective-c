//
//  ViewController.m
//  Lesson3
//
//  Created by T on 09.04.15.
//  Copyright (c) 2015 T. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSMutableArray * arrayM;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString * string = @"one,two,three,5";
    NSArray * arrayFromString = [string componentsSeparatedByString:@","];
    
    NSDictionary * dict = [[NSDictionary alloc] initWithObjectsAndKeys:
                           @"string",@"str1",
                           @"string2",@"str2",
                           @"string3",@"str3",
                           arrayFromString, @"array", nil];
    
    NSLog(@"%@", dict);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
