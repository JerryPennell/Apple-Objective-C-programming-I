//
//  ViewController.m
//  App2Week2
//
//  Created by Wayne Pennell on 1/14/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor blueColor];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated{
    
    
    //Title of book
    
    label1 = [[UILabel alloc] initWithFrame:(CGRectMake(250.0f, 10.0f, 300.0f, 20.0f))];
    
    if(label1 != nil){
        label1.backgroundColor = [UIColor whiteColor];
        label1.text = @"Harry Potter";
        label1.textAlignment = NSTextAlignmentCenter;
        
    }
    [self.view addSubview:label1];
    
    //Title text
    label2 = [[UILabel alloc] initWithFrame:(CGRectMake(10.0f, 50.0f, 200.0f, 20.0f))];
    [self.view addSubview:label2];
    
    //Author of the book
    label3 = [[UILabel alloc] initWithFrame:(CGRectMake(215.0f, 50.0f, 200.0f, 20.0f))];
    [self.view addSubview:label3];
    
    
    //Published label
    label4 = [[UILabel alloc] initWithFrame:(CGRectMake(10.0f, 100.0f, 200.0f, 20.0f))];
    [self.view addSubview:label4];
    
    //Published text
    label5 = [[UILabel alloc] initWithFrame:(CGRectMake(215.0f, 100.0f, 200.0f, 20.0f))];
    [self.view addSubview:label5];
    
    //Summary label
    label6 = [[UILabel alloc] initWithFrame:(CGRectMake(10.0f, 150.0f, 200.0f, 20.0f))];
    [self.view addSubview:label6];
    
    //Summary text
    label7 = [[UILabel alloc] initWithFrame:(CGRectMake(215.0f, 150.0f, 200.0f, 200.0f))];
    [self.view addSubview:label7];
    
    //List of items label 
    label8 = [[UILabel alloc] initWithFrame:(CGRectMake(10.0f, 420.0f, 200.0f, 20.0f))];
    [self.view addSubview:label8];
    
    //List of items Mutabale string
    label9 = [[UILabel alloc] initWithFrame:(CGRectMake(10.0f, 441.0f, 200.0f, 100.0f))];
    [self.view addSubview:label9];
    
    
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated{
    
    //Author: right aligned label
    
    label2.text = @"Author:";
    label2.textAlignment = NSTextAlignmentRight;
    
    //Author:Name
    
    label3.text = @"J.K. Rowlings";
    label3.textAlignment = NSTextAlignmentLeft;
    
    
    //Published label
    
    label4.text = @"Published:";
    label4.textAlignment = NSTextAlignmentRight;
    
    //Published text
    
    label5.text = @"26 June 1997";
    label5.textAlignment = NSTextAlignmentLeft;
    
    //Summary label
    
    label6.text = @"Summary:";
    label6.textAlignment = NSTextAlignmentRight;
    
    //Summary text -span across multiple lines
    
    
    
    //If you need more than single line to fit text - notes
    label7.numberOfLines = 7;
    
    label7.text = @"Harry Potter is a young wizard who embarks on a magical journey into a school of magic and mystery.";
    label7.textAlignment = NSTextAlignmentCenter;
    
    //List of items label
    label8.text = @"List of items:";
    label8.textAlignment = NSTextAlignmentLeft;
    
    
    
    
    //NSArray of items in the book
    
    NSArray *itemsInBook = [[NSArray alloc] initWithObjects:@"Wands",@"Spell Books",@"Broom Sticks", @"Glasses",@"Robes",nil];
    
    
    //List of items label
    label9.numberOfLines = 5;
    
    //loop through the items in the book appending to NSMutableString
    
    NSMutableString *strList = [NSMutableString string]; //String to hold items
   
    for(NSString *item in itemsInBook) {
         NSUInteger index = [itemsInBook indexOfObject:item];
        if (index == 4) { 
            [strList appendString:@" and "];
            [strList appendString:item];
        }else{
            [strList appendString:item];
            if (item != nil){
                [strList appendString:@","];
            }
        }
            //NSLog(@"%d",index);
    }
    
    label9.text = strList;
    //label9.text = @"TBD";
    label9.textAlignment = NSTextAlignmentCenter;
    
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
