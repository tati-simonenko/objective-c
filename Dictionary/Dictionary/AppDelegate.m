//
//  AppDelegate.m
//  Dictionary
//
//  Created by T on 05.05.15.
//  Copyright (c) 2015 T. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    

    Student * student1 = [[Student alloc] init];
    student1.name = @"Serg";
    student1.surname = @"Smirnov";
    student1.phrase = @"Olla";
    
    Student * student2 = [[Student alloc] init];
    student2.name = @"Nik";
    student2.surname = @"Petrov";
    student2.phrase = @"Hello";
    
    Student * student3 = [[Student alloc] init];
    student3.name = @"Fernando";
    student3.surname = @"Ivanov";
    student3.phrase = @"Aloha";
    
    Student * student4 = [[Student alloc] init];
    student4.name = @"Fedor";
    student4.surname = @"Smeshnov";
    student4.phrase = @"Hi";
    
    Student * student5 = [[Student alloc] init];
    student5.name = @"Elena";
    student5.surname = @"Beautiful";
    student5.phrase = @"Hello";
    
    NSDictionary * students = [[NSDictionary alloc] initWithObjectsAndKeys:
                               student1, [student1.name stringByAppendingString:student1.surname],
                               student2, [student2.name stringByAppendingString:student2.surname],
                               student3, [student3.name stringByAppendingString:student3.surname],
                               student4, [student4.name stringByAppendingString:student4.surname],
                               student5, [student5.name stringByAppendingString:student5.surname],
                               nil];
    
    for (Student *student in students) {
        Student *object = [students objectForKey:student];
        
        NSLog(@"Student %@ said %@", [object fullName], [object phrase]);
        
        
    }
    
    NSLog(@"%@", students);
    
    
//    [students keysSortedByValueUsingSelector:students];
    
    

    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
