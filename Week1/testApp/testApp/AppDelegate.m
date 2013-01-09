//
//  AppDelegate.m
//  testApp
//
//  Created by Wayne Pennell on 1/8/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    //Create a variable using the float data type. Cast the float to an int and using NSLog, output both the initial float value as well as the int value.
    
    
    //Float created with full dollar amount
    
    float fullAmount =7.50;
   
    //Casted as int
   
    int notax = (int)fullAmount;
    
    
    
    
    //Story Output to NSLog
    
    NSLog(@"The float stored in the variable dollars is %.2f", fullAmount);
  
    
    
    NSLog(@"I went to the store to buy some breakfast items.");
    NSLog(@"The eggs cost less than the bacon. The bacon was $%d", notax);
    
    NSLog(@"In addition to my eggs and bacon I wanted a stack of pancakes only if the milk and syrup was on sale.");
    NSLog(@"");
    NSLog(@"So the question is did I have pancakes when I got home?");
    
    
    //Variables
    
    BOOL milkOnSale = YES;
    BOOL syrupOnSale = YES;
    
    float costOfMilk = 4.50;
    int costOfSyrup = 7;
    
    //Perform an AND, OR comparison. Use float, int and BOOL types. BOOL values should be YES or NO and written in all caps.
    
    if(milkOnSale == YES) && (syrupOnSale == YES){
        
        NSLog(@"You betcha I am making pancakes, both the milk and syrup were on SALE!");
        
    }else if( costOfMilk <= 5 ) || (costOfSyrup <= 7){
        
        NSLog(@"Well I guess I can buy one of the ingredients and just borrow the rest from my neighbor.");
    }else {
        
        NSLog(@"Neither the milk nor the syrup were on sale, I will not have pancakes");
    }
    
    
    
    
    
    
    
    
    
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
