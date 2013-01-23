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
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated{
    
    
       [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated{
    
    
    [super viewDidAppear:animated];
}

// Addition function

- (int)add:(int)value1 :(int)value2
{
    // return added numbers
    return (value1 + value2);
}

// Compare two NSInteger functions - Returns YES or NO

- (BOOL)compare:(NSInteger)compVal1 :(NSInteger)compVal2
{
    if ((int)compVal1 == (int)compVal1) {
        return YES;
    } else {
        return NO;
    }
}

// Append to NSStrings into NSMutableString - Returns arg1 and arg2 appended

- (NSString*)append:(NSString*)stringVal1 :(NSString*)stringVal2
{
   NSMutableString *strValues = [NSMutableString string];
    
   [strValues appendString:stringVal1];
   [strValues appendString:stringVal2];
  
    return strValues;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
