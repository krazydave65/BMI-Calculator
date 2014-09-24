//
//  ViewController.h
//  BMI Calculator
//
//  Created by David Pedroza on 9/16/14.
//  Email: Krazydave65@csu.fullerton.edu
//
//  Description: This ViewController.h file declares all the variables, IBAction functions and properties
//  Copyright (c) 2014 DavidPedroza. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BmiModel.h"

@interface ViewController : UIViewController
{
    //created an object that can connect to a storyboard label
    IBOutlet UILabel *BMI,*height,*weight, *rangeLabel;
    IBOutlet UITextField *heightText, *weightText;
    IBOutlet UIImageView *imgView;
    BmiModel *model; //outlet to model
    BOOL isON;

    
}

//enables us to connect a button-click to an IBAction
-(IBAction)clickedButton:(id)sender;

-(IBAction)switchButton:(id)sender;

- (IBAction)textFieldDismissed:(id)sender;
- (IBAction)weightFieldDismissed:(id)sender;

@property (weak, nonatomic) IBOutlet UISwitch *switchButton;


@end
