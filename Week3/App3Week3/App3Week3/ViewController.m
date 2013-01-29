//
//  ViewController.m
//  App3Week3
//
//  Created by Wayne Pennell on 1/22/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    //Function call to Addition
    //Call the Add function passing in two integer values. Capture the return of this
    //function into variable.
    
    NSInteger addVal1 = 22; //add value1
    NSInteger addVal2 = 22; //add value2
    
    
    //Added values of input numbers
    NSInteger addedNumber;
    addedNumber= [self add:addVal1 addVal2:addVal2];
    
    //Bundle the returned integer into an NSNumber
    //then convert it to a NSString and pass it to the DisplayAlertWithString function.
    
    NSNumber *bundle = [[NSNumber alloc] initWithInt:addedNumber];
    
    NSString *numToString = [NSString stringWithFormat: @"The bundled number is %@", bundle];
    
    
    //Check and display Alert window with DisplayAlertWith string
    if (numToString != nil) {
        
        [self displayAlertWithString:numToString];
    }
    
    
    //Function call to display appended string
    
    NSString *appendedStrings = [self append:@"String 1 and " stringVal2:@"String 2 appended"];
    
    //check and display Alert window with appended string
    
     if (appendedStrings != nil) {
         
         [self displayAlertWithString:appendedStrings];
     }
    
    
    //Function call to show BOOL
    
    BOOL comparedIntegers = [self compare:addVal1 addVal2:addVal2];
 
    
    //Call the Compare function with two integer values. If Compare returns YES, display an UIAlertView both with the input values and the result using the DisplayAlertWithString function
    NSString *valuesAndString = [NSString stringWithFormat: @"%d %d", addVal1, addVal2];
    
    if(comparedIntegers == YES){
        
        //Alert window input values and result string
        
        [self displayAlertWithString:valuesAndString];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

// Addition function

- (int)add:(int)addVal1 addVal2:(int)addVal2
{
    // return added numbers
    return (addVal1 + addVal2);
}

// Compare two NSInteger functions - Returns YES or NO

- (BOOL)compare:(NSInteger)addVal1 addVal2:(NSInteger)addVal2
{
    if ((int)addVal1 == (int)addVal2) {
        return YES;
    } else {
        return NO;
    }
}

// Append to NSStrings into NSMutableString - Returns arg1 and arg2 appended

- (NSString*)append:(NSString*)stringVal1 stringVal2:(NSString*)stringVal2
{
    NSMutableString *strValues = [NSMutableString string];
    
    [strValues appendString:stringVal1];
    [strValues appendString:stringVal2];
    
    return strValues;
}

// DisplayAlertWithString function takes input as NSString

- (NSString*)displayAlertWithString:(NSString*)stringInput
{
    UIAlertView *alertViewCallable = [[UIAlertView alloc] initWithTitle:@"DisplayAlertWithString" message:stringInput delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
    
    if(alertViewCallable != nil){
        [alertViewCallable show];
    }
    
    return stringInput;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
