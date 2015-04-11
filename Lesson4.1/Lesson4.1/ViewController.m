//
//  ViewController.m
//  Lesson4.1
//
//  Created by T on 10.04.15.
//  Copyright (c) 2015 T. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSMutableArray * arrayBase;
@property (nonatomic, strong) NSArray * arrayAmount;
@property (nonatomic, strong) NSArray * arrayCharacters;


@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSString * stringAmount = @"245,4565,453";
    NSString * stringCharacters = @"Разумных,Ленивых,Упорных";
    
    NSString * stringCharacterRational = @"Один вдруг поперхнулся, и их осталось девять";
    NSString * stringCharacterLazy = @"Один не смог проснуться, и их осталось восемь";
    NSString * stringCharacterPertinacious = @"Один не возвратился, и их осталось семь";
    
    self.arrayBase = [NSMutableArray array];
    
    self.arrayAmount = [stringAmount componentsSeparatedByString:@","];
    self.arrayCharacters = [stringCharacters componentsSeparatedByString:@","];
    
    
    for (int i = 0; i < self.arrayAmount.count; i++) {
        
        NSMutableDictionary * dict = [[NSMutableDictionary alloc] init];
        [dict setObject:[self.arrayAmount objectAtIndex:i] forKey:@"amount"];
        [dict setObject:[self.arrayCharacters objectAtIndex:i] forKey:@"character"];
        
        NSString * value = [self.arrayCharacters objectAtIndex:i];
        
        if ([value isEqualToString:@"Разумных"]) {
            
            [dict setObject:stringCharacterRational forKey:@"descr"];
            
        }
        
        else if ([value isEqualToString:@"Ленивых"]) {
            
            [dict setObject:stringCharacterLazy forKey:@"descr"];
            
        }
        
        else if ([value isEqualToString:@"Упорных"]) {
            
            [dict setObject:stringCharacterPertinacious forKey:@"descr"];
            
        }

            
        
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
    
    DetailViewController * detail = [self.storyboard instantiateViewControllerWithIdentifier:@"detail"];
    
    NSDictionary * dict = [self.arrayBase objectAtIndex:indexPath.row];
    
    detail.string_mainValue = [dict objectForKey:@"amount"];
    detail.string_Price = [dict objectForKey:@"character"];
    detail.string_Discr = [dict objectForKey:@"descr"];
    
    [self.navigationController pushViewController:detail animated:YES];
    
//    NSLog(@"IndexPath %i", indexPath.row);
    
    
}






@end