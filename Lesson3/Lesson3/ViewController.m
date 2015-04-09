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
    NSMutableArray * arrayM = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < 3; i++) {
        
        NSLog(@"[arrayFromString objectAtIndex:i] %@ " , [arrayFromString objectAtIndex:i]);
        
        if ([[arrayFromString objectAtIndex:i] isEqualToString:@"two"]) {
            NSLog(@"[arrayFromString objectAtIndex:i] %@" , [arrayFromString objectAtIndex:i+1]);
        }
        
    }
    
    NSLog(@"%i", arrayFromString.count);
    
    
    for (NSString * string in arrayFromString) {
        
        NSLog(@"%@", string);
        
    }
    
    
    for (NSString * string in arrayFromString) {
        
        if ([string isEqualToString:@"5"]) {
            
            NSLog(@"equal %@", string);
            
        }
        
        [self.arrayM addObject:string];
        
    }
    
    
    for (NSString * string in arrayFromString) {
        
        if (![string isEqualToString:@"5"]) {
            
            [arrayM addObject:string];
            
        }
        
//        [arrayM addObject:string];
        
    }
    
    
    NSLog(@"lets remove object");
    
    
    for (int i = 0; i < 3; i++) {
        
        
        if ([[arrayM objectAtIndex:i] isEqualToString:@"two"]) {
            
            [arrayM removeObject:[arrayM objectAtIndex:i]];
            
        }
        
    }
    
    
    
    NSLog(@"%@", arrayM);
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
