//
//  ViewController.h
//  App4Week4
//
//  Created by Wayne Pennell on 1/27/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    
    // Interface variables
    
    UILabel *usernameLabel;         //Enter the username label
    UILabel *enterYourUsername;     //UILabel info for please enter the username
    UILabel *enteredUsername;       //Second state of the userName UI Label
    UILabel *createdBy;             //Created by UI label
    UITextField *textField;         //Textfield for entering login
    UIButton *loginButton;          //Login buttton for sending text
    UIButton *showDateButton;       //Button to show date
    UIButton *infoButton;           //Information button
}
@end
