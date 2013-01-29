//
//  ViewController.h
//  App3Week3
//
//  Created by Wayne Pennell on 1/22/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{

   
}


//Function definitions



//Add Function definition
- (int)add:(int)addVal1 addVal2:(int)addVal2;

//BOOL compare two NSInteger values and return YES or NO
- (BOOL)compare:(NSInteger)addVal1 addVal2:(NSInteger)addVal2;

//Append two NSStrings with NSMutable String
- (NSString*)append:(NSString*)stringVal1 stringVal2:(NSString*)stringVal2;

//Display Alert with String - takes in a NSString as input
- (NSString*)displayAlertWithString:(NSString*)stringInput;


@end
