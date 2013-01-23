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
- (int)add:(int)value1 :(int)value2;

//BOOL compare two NSInteger values and return YES or NO
- (BOOL)compare:(NSInteger)compVal1 :(NSInteger)compVal2;

//Append two NSStrings with NSMutable String
- (NSString*)append:(NSString*)stringVal1 :(NSString*)stringVal2;
@end
