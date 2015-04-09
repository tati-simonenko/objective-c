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
    
    NSString * string = @"randomizer";
    
    
    double d = 22.9;
    
    
    
    NSRange range = NSMakeRange(1, 4);
    NSString * doubleString = [NSString stringWithFormat:@"%f", d];
    NSString * string1 = [doubleString substringWithRange:range];
    
    NSLog(@" %@ and %@", doubleString, string1);
    NSLog(@"d %f", d);
    NSLog(@"%@", doubleString);
    
    //    and
    if ([string isEqualToString:string1] && [string isEqualToString:string1]) {
        NSLog(@"yes");
    }
    

    //    or
    else if ([string isEqual:@"test"] || [string isEqual:@"test"] ) {
        NSLog(@"no");
    }
    
    else {
        NSLog(@"nothing");
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
