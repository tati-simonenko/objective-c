//
//  ViewController.m
//  Lesson3
//
//  Created by T on 09.04.15.
//  Copyright (c) 2015 T. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSMutableArray * arrayBase;
@property (nonatomic, strong) NSArray * arrayAmount;
@property (nonatomic, strong) NSArray * arrayCharacters;


@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    

    NSString * stringAmount = @"245,4565,453,735,297,4721,849";
    NSString * stringCharacters = @"Разумных,Ленивых,Упорных,Яростных,Серьезных,Трагических,Благоразумных";
    
    self.arrayBase = [NSMutableArray array];
    
    self.arrayAmount = [stringAmount componentsSeparatedByString:@","];
    self.arrayCharacters = [stringCharacters componentsSeparatedByString:@","];
    
    
    for (int i = 0; i < self.arrayAmount.count; i++) {
        
        NSDictionary * dict = [[NSDictionary alloc] initWithObjectsAndKeys:
                               [self.arrayAmount objectAtIndex:i], @"amount",
                               [self.arrayCharacters objectAtIndex:i], @"character", nil];
        
        [self.arrayBase addObject:dict];
        
    }
    
    NSLog(@"self.arrayBase %@", self.arrayBase);
    

    
}

- (void) testMethod {
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


#pragma mark - UITableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return self.arrayBase.count ;
    
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    
    static NSString * simpleTableIdentifier = @"Cell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    

    
    cell.textLabel.text = [[self.arrayBase objectAtIndex:indexPath.row]objectForKey:@"amount"];
    cell.detailTextLabel.text = [[self.arrayBase objectAtIndex:indexPath.row]objectForKey:@"character"];
    
    return cell;
    
}


- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}


@end