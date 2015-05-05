//
//  ViewController.m
//  Lesson8
//
//  Created by T on 03.05.15.
//  Copyright (c) 2015 T. All rights reserved.
//

#import "ViewController.h"
#import "ToDoDetailViewController.h"


@interface ViewController ()

@property (strong, nonatomic) NSMutableArray * array_Events;
- (IBAction)add_Event:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self show_Notifications];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) show_Notifications {
    
    NSArray * array = [[UIApplication sharedApplication] scheduledLocalNotifications];
    self.array_Events = [[NSMutableArray alloc] initWithArray:array];
    
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.array_Events.count;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString * identifier = @"Cell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    UILocalNotification * notif = [self.array_Events objectAtIndex:indexPath.row];
    
    cell.textLabel.text = [notif.userInfo objectForKey:@"event"];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@", [notif.userInfo objectForKey:@"date_Event"]];
    
    return cell;

}


#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UILocalNotification * notif = [self.array_Events objectAtIndex:indexPath.row];
        
    ToDoDetailViewController * detail = [self.storyboard instantiateViewControllerWithIdentifier:@"Detail"];
    detail.isNewEvent = NO;
    detail.string_EventItem = [notif.userInfo objectForKey:@"event"];
    detail.date_Current_Event = [notif.userInfo objectForKey:@"date_Event"];
    
    
    
    
    [self.navigationController pushViewController:detail animated:YES];
    
}

- (IBAction)add_Event:(id)sender {
    
    ToDoDetailViewController * detail = [self.storyboard instantiateViewControllerWithIdentifier:@"Detail"];
    detail.isNewEvent = YES;
    [self.navigationController pushViewController:detail animated:YES];
    
}















@end
