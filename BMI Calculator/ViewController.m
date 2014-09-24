//
//  ViewController.m
//  BMI Calculator
//
//  Created by David Pedroza on 9/16/14.
//  Email: Krazydave65@csu.fullerton.edu
//
//  Description: This ViewController.m file connects all the IBActions and Outlets to the STORYBOARD
//              This controller accesses the Model, and recieves the calculated Bmi
//  Copyright (c) 2014 DavidPedroza. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize switchButton;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

}

-(BmiModel *)model
{
    if (!model){ // if brain doesn't exist... then it is created [here]
        model = [[BmiModel alloc] init];
    }
    
    return model;
}

- (IBAction)textFieldDismissed:(id)sender
{
    [heightText resignFirstResponder];
}

- (IBAction)weightFieldDismissed:(id)sender {
    [weightText resignFirstResponder];
}

-(void)bmiRange:(float)bmiAnswer{
    UIImage *image1 = [UIImage imageNamed:@"body1.png"];
    UIImage *image2 = [UIImage imageNamed:@"body2.png"];
    UIImage *image3 = [UIImage imageNamed:@"body3.png"];
    UIImage *image4 = [UIImage imageNamed:@"body4.png"];
    UIImage *image5 = [UIImage imageNamed:@"body5.png"];
    UIImage *image6 = [UIImage imageNamed:@"body6.png"];
    UIImage *image7 = [UIImage imageNamed:@"body7.png"];
    UIImage *image8 = [UIImage imageNamed:@"body8.png"];

    
    if (bmiAnswer < 16.00) {
        rangeLabel.text = @"Sever Thinness";
        [imgView setImage:image1];
    }
    else if (bmiAnswer <= 16.99){
        rangeLabel.text = @"Moderate Thinness";
        [imgView setImage:image2];
        
    }
    else if (bmiAnswer <= 18.49){
        rangeLabel.text = @"Mild Thinness";
        [imgView setImage:image3];

    }
    else if (bmiAnswer <= 24.99){
        rangeLabel.text = @"Normal Range";
        [imgView setImage:image4];
    }
    else if (bmiAnswer <= 29.99){
        rangeLabel.text = @"Overweight";
        [imgView setImage:image5];

    }
    else if (bmiAnswer <= 34.99){
        rangeLabel.text = @"Obese Class I (Moderate)";
        [imgView setImage:image6];

    }
    else if (bmiAnswer <= 39.99){
        rangeLabel.text = @"Obese Class II (Sever)";
        [imgView setImage:image7];

    }
    else{
        rangeLabel.text = @"Obese Class III (Very Severe)";
        [imgView setImage:image8];

    }
}


-(IBAction)clickedButton:(id)sender
{
    float bmiAnswer;
    float h = [heightText.text floatValue];
    float w = [weightText.text floatValue];
    //BmiModel *model = [[BmiModel alloc] initWithHeight:h andWeight:w];
    
    //float bmiInt = w;
    if (!isON){
//        bmiAnswer = (w/(h * h))*703;
        bmiAnswer = [[self model] bmiUSCalculatorHeight:h andWeight:w];
    }
    else
    {
//        h = h/100;
//        bmiAnswer = (w/(h*h));
        bmiAnswer =[[self model] bmiMetricCalculatorHeight:h andWeight:w];
    }
    NSString *bmiResult = [[NSString alloc]initWithFormat:@"Your BMI is %.2f", bmiAnswer];
    [self bmiRange:bmiAnswer];
    
    
    BMI.text = bmiResult;
}


-(IBAction)switchButton:(id)sender
{
    if (switchButton.on) {
        isON = false;
        height.text = @"in";
        weight.text = @"lbs";
    } else {
        isON = true;
        height.text = @"cm";
        weight.text = @"kilo";
    }
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
