//
//  AppDelegate.m
//  testApp
//
//  Created by Wayne Pennell on 1/8/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//  Apple Programming Language: Objective CI - APP1  Week 1


//Instructions

/*
 You project will need to have the following features:
 Create a new Empty Application Project
 
 Create a variable using the float data type. Cast the float to an int and using NSLog, output both the initial float value as well as the int value.
 
 Perform an AND, OR comparison. Use float, int and BOOL types. BOOL values should be YES or NO and written in all caps.
 
 Use an if, else if and else check using any of the data types of your choice.
 
 Perform a single for loop printing out values to the console
 
 Perform a nested loop printing out values to the console
 
 Perform a while loop that increments an int variable and outputs to the console.
 
 You are free to come up with any story you wish, but keep a constant theme in your application. Also, all of the code for this assignment will need to be placed in the
 didFinishLaunchingWithOptions function. Don't worry if the amount of code gets long, just keep things neat and please use code comments.
 
 */

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
    
    if((milkOnSale) && (syrupOnSale)){
        
        NSLog(@"You betcha I am making pancakes, both the milk and syrup were on SALE!");
        
    }else if(( costOfMilk <= 5 ) || (costOfSyrup <= 7)){
        
        NSLog(@"Well I guess I can buy one of the ingredients and just borrow the rest from my neighbor.");
    }else {
        
        NSLog(@"Neither the milk nor the syrup were on sale, I will not have pancakes");
    }
    
    //Takes 5 or more pankcakes to make a super stack - Single for loop
    
    NSLog(@"Lets make a super stack of pancakes.. it takes 10!  Let's begin..   READY!!!");
    
    //Single for loop
    for (int amt = 1; amt <= 10; amt++)
    {
        NSLog(@"Adding pankcake number #%d", amt);
    }
    
    NSLog(@"That's our SUPER stack!");
    
    //Nested for loop
    
    int howManyCanIeat = 5;
    
    
    for (int consume = 9; consume != 0; consume--)
    {
        NSLog(@"Let's eat a pankcake noom noom noom, there are %d more left!", consume);
        
        if(howManyCanIeat >= consume){
            NSLog(@"I can only eat %d I am stuffed!", howManyCanIeat);
            break;
        }
    }
    
    //While loop
    int baconStrips =0;
    
    
    NSLog(@"Since we have more guests coming for breakfast we should cook more for them 20 should be enough.");
    
    while (baconStrips < 20){
        NSLog(@"Let's fry one UP!");
        
        baconStrips++;

        NSLog(@"That's only %d, we need more.",baconStrips);
    }
    
    NSLog(@"Perfect ... let's all have a delcious breakfast!");
    
    
    
    // End of Story
    
    
    
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
