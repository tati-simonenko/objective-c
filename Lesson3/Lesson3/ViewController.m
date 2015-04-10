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
    
    //<<<<<<< Updated upstream
    //    NSString * stringPrices = @"325,1013,99";
    //    NSString * stringValues = @"Тетрадь,Телевизор,Утюг";
    //
    //    self.arrayPrices = [stringPrices componentsSeparatedByString:@","];
    //    self.arrayValues = [stringValues componentsSeparatedByString:@","];
    //
    //
    //
    //
    //
    //    self.arrayM = [NSMutableArray array];
    //
    //    NSInteger i = 17;
    //
    //    NSDictionary * dict = [[NSDictionary alloc] initWithObjectsAndKeys:
    //                           @"string1", @"str1",
    //                           @"string2", @"str2",
    //                           @"string3", @"str3",
    //                           @(i), @"int", nil];
    //
    //    NSLog(@"dict %@", dict);
    //=======
    NSString * stringAmount = @"245,4565,453,735,297,4721,849";
    NSString * stringCharacters = @"Разумных,Ленивых,Упорных,Стеснительных,Очаровательных,Серьезных,Честных";
    //  NSString * stringBalances = @"24,3,256,453,2301,14000260";
    
    self.arrayBase = [NSMutableArray array];
    
    self.arrayAmount = [stringAmount componentsSeparatedByString:@","];
    self.arrayCharacters = [stringCharacters componentsSeparatedByString:@","];
    // self.arrayBalances = [stringBalances componentsSeparatedByString:@","];
    
    
    for (int i = 0; i < self.arrayAmount.count; i++) {
        
        NSDictionary * dict = [[NSDictionary alloc] initWithObjectsAndKeys:
                               [self.arrayAmount objectAtIndex:i], @"amount",
                               [self.arrayCharacters objectAtIndex:i], @"character", nil];
        //                               [self.arrayBalances objectAtIndex:i], @"balance",
        
        [self.arrayBase addObject:dict];
        
    }
    
    NSLog(@"self.arrayBase %@", self.arrayBase);
    
    //    NSInteger i = 17;
    
    //    NSDictionary * dict = [[NSDictionary alloc] initWithObjectsAndKeys:
    //                           @"string1", @"str1",
    //                           @"string2", @"str2",
    //                           @"string3", @"str3",
    //                           @(i), @"int", nil];
    
    
    
}

- (void) testMethod {
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UITableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return self.arrayBase.count ;
    
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //<<<<<<< Updated upstream
    //=======
    
    //    Player *player = (self.players)[indexPath.row];
    //
    //    UILabel *nameLabel = (UILabel *)[cell viewWithTag:100];
    //    nameLabel.text = player.name;
    //
    //    UILabel *gameLabel = (UILabel *)[cell viewWithTag:101];
    //    gameLabel.text = player.game;
    //
    //    UIImageView *ratingImageView = (UIImageView *)[cell viewWithTag:102];
    //    ratingImageView.image = [self imageForRating:player.rating];
    
    
    
    static NSString * simpleTableIdentifier = @"Cell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    //    cell.textLabel.text = [self.arrayValues objectAtIndex:indexPath.row];
    //    cell.detailTextLabel.text = [self.arrayPrices objectAtIndex:indexPath.row];
    //    return cell;
    
    //}
    
    cell.textLabel.text = [[self.arrayBase objectAtIndex:indexPath.row]objectForKey:@"amount"];
    cell.detailTextLabel.text = [[self.arrayBase objectAtIndex:indexPath.row]objectForKey:@"character"];
    //    cell.detailTextLabel.text = [[self.arrayBase objectAtIndex:indexPath.row]objectForKey:@"balance"];
    
    return cell;
    
}
//- (UIImage *)imageForRating:(int)rating
//{
//    switch (rating) {
//        case 1: return [UIImage imageNamed:@"1StarSmall"];
//        case 2: return [UIImage imageNamed:@"2StarsSmall"];
//        case 3: return [UIImage imageNamed:@"3StarsSmall"];
//        case 4: return [UIImage imageNamed:@"4StarsSmall"];
//        case 5: return [UIImage imageNamed:@"5StarsSmall"];
//    }
//    return nil;
//}
//>>>>>>> Stashed changes

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}


@end