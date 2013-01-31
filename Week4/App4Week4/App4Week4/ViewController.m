//
//  ViewController.m
//  App4Week4
//
//  Created by Wayne Pennell on 1/27/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import "ViewController.h"


//Defined global static variables

#define LOGIN_BTN 0
#define DATE_BTN 1
#define INFO_BTN 2

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //Start background color as white
    self.view.backgroundColor = [UIColor whiteColor];
    
    //label Username
    usernameLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 15.0f, 90.0f, 20.0f)];
    usernameLabel.text = @"Username:";
    
    //Create text field for username input
    textField = [[UITextField alloc] initWithFrame:CGRectMake(95.0f, 10.0f, 220.0f, 30.0f)];
    if (textField != nil)
    {
        textField.borderStyle = UITextBorderStyleRoundedRect;
        [self.view addSubview:textField];
    }
    
    //The login button
    loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (loginButton !=nil)
    {
        loginButton.frame = CGRectMake(228.0f, 50.0f, 85.0f, 25.0f);
        [loginButton setTitle:@"Login" forState:(UIControlStateNormal)];
        loginButton.tag = LOGIN_BTN;
        [loginButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:(loginButton)];
    }
    
    //First state of Please Enter Username UILabel
    enterYourUsername = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 120.0f, 320.0f, 70.0f)];
    enterYourUsername.text = @"Please Enter Username";
    enterYourUsername.backgroundColor = [UIColor yellowColor];
    enterYourUsername.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:enterYourUsername];
    
    //Initial state of "Created By" UILabel
    createdBy = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 400.0f, 340.0f, 50.0f)];
    createdBy.backgroundColor = [UIColor yellowColor];
    createdBy.textAlignment = NSTextAlignmentLeft;
    createdBy.numberOfLines = 3;
    createdBy.lineBreakMode = NSLineBreakByWordWrapping;
    [self.view addSubview:createdBy];
    
    //Make button for showing date
    showDateButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (showDateButton !=nil)
    {
        showDateButton.frame = CGRectMake(5.0f, 275.0f, 100.0f, 35.0f);
        [showDateButton setTitle:@"Show Date" forState:(UIControlStateNormal)];
        showDateButton.tag = DATE_BTN;
        [showDateButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:showDateButton];
    }
    
    //Make an info button
    infoButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
    if (infoButton !=nil)
    {
        infoButton.frame = CGRectMake(10.0f, 350.0f, 25.0f, 25.0f);
        [infoButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        infoButton.tag = INFO_BTN;
        [self.view addSubview:infoButton];
    }
    
    //Call username UILabel
    [self.view addSubview:usernameLabel];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

//Create click function for each button when they are pressed
- (void)onClick:(UIButton*)button
{
    if (button.tag == LOGIN_BTN)
    {
        NSString *typedUsername = [textField text];
        
        //Here we hide the Keyboard because its just good UI
        [textField endEditing:YES];
        if (typedUsername.length == 0)
        {
            enterYourUsername.text = @"Username cannot be empty.";  //Display if the length is zero
        }
        else if (enterYourUsername != nil)
        {
            enterYourUsername.text = [NSString stringWithFormat:@"User: %@ has been logged in.",typedUsername];
        }
    }
    else if (button.tag == DATE_BTN)  //Checking for date button tag
        
    {
        //If we have a date button then we format and display when ready
        NSDate *date = [NSDate date];
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateStyle:NSDateFormatterFullStyle];
        [dateFormatter setTimeStyle:NSDateFormatterFullStyle];
        
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Date" message:[NSString stringWithFormat:@"%@",[dateFormatter stringFromDate:date]] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        if (alertView != nil)
        {
            [alertView show];
        }
        
    } else if (button.tag == INFO_BTN)
        
    {
        if (createdBy != nil)
        {
          createdBy.text = @"This application was created by: Jerry Pennell.";
            
        }
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end