//
//  AppDelegate.m
//  App3Week3
//
//  Created by Wayne Pennell on 1/22/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.viewController = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
    
    //Function call to Addition
    //Call the Add function passing in two integer values. Capture the return of this
    //function into variable.
    
    int value1 = 22;
    int value2 = 22;
    
    int addedNumber = [self.viewController add:value1 :value2];
    
    //Bundle the returned integer into an NSNumber
    //then convert it to a NSString and pass it to the DisplayAlertWithString function.
    
    NSString *numToString = [NSString stringWithFormat: @"The number is %@", [self.viewController displayAlertWithString:(NSString*)[NSNumber numberWithInt:addedNumber]]];
    
     
    
    //Function call to show BOOL
    
    BOOL comparedIntegers = [self.viewController compare:value1 :value2];

    
    //Function call to display ppended string
    
    NSString *appendedStrings = [self.viewController append:@"String 1 and " :@"String 2 appended"];
    
    //Alert window with appended string
    
    UIAlertView *alertAppendString = [[UIAlertView alloc]
                          initWithTitle: @"Appended String"
                          message: appendedStrings
                          delegate: nil
                          cancelButtonTitle:@"OK"
                          otherButtonTitles:nil];
    
    //Display and release alert
    
    [alertAppendString show];
   
    
    
    //Alert window with DisplayAlertWith string
    
    UIAlertView *callWithString = [[UIAlertView alloc]
                                 initWithTitle: @"DisplayAlertWithString"
                                 message: numToString
                                 delegate: nil
                                 cancelButtonTitle:@"OK"
                                 otherButtonTitles:nil];
    //Display and release alert
    
    [callWithString show];
    
    
    //Call the Compare function with two integer values. If Compare returns YES, display an UIAlertView both with the input values and the result using the DisplayAlertWithString function
    
    if(comparedIntegers == YES){
        
        NSString *valuesAndString = [NSString stringWithFormat: @"%d %d %@", value1, value2,[self.viewController displayAlertWithString:(NSString*)[NSNumber numberWithInt:addedNumber]]];
        
        //Alert window input values and result string
        
        UIAlertView *alertWithString = [[UIAlertView alloc]
                                        initWithTitle: @"Was YES"
                                        message: valuesAndString
                                        delegate: self
                                        cancelButtonTitle:@"OK"
                                        otherButtonTitles:nil];
        
        [alertWithString show];
    }
    
    self.window.rootViewController = self.viewController;
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
